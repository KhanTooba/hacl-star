module Hacl.Bignum.Exponentiation

open FStar.HyperStack
open FStar.HyperStack.ST
open FStar.Mul

open Lib.IntTypes
open Lib.Buffer

module BN = Hacl.Bignum
module BM = Hacl.Bignum.Montgomery

open Hacl.Bignum.Definitions

module ST = FStar.HyperStack.ST
module S = Hacl.Spec.Bignum.Exponentiation

friend Hacl.Spec.Bignum.Exponentiation


#reset-options "--z3rlimit 50 --fuel 0 --ifuel 0"

inline_for_extraction noextract
let bn_mod_exp_loop_st (nLen: BN.meta_len) =
  let rLen = nLen +. 1ul in
    n:lbignum nLen
  -> nInv_u64:uint64
  -> bBits:size_t{v bBits > 0}
  -> bLen:size_t{v bLen = v (blocks bBits 64ul) /\ (v bBits - 1) / 64 < v bLen}
  -> b:lbignum bLen
  -> aM:lbignum rLen
  -> accM:lbignum rLen ->
  Stack unit
  (requires fun h ->
    live h n /\ live h b /\ live h aM /\ live h accM /\
    disjoint aM accM /\ disjoint aM b /\ disjoint aM n /\
    disjoint accM b /\ disjoint accM n)
  (ensures  fun h0 _ h1 -> modifies (loc aM |+| loc accM) h0 h1 /\
    (as_seq h1 aM, as_seq h1 accM) ==
      Lib.LoopCombinators.repeati (v bBits)
	(S.bn_mod_exp_f (as_seq h0 n) nInv_u64 (v bBits) (v bLen) (as_seq h0 b))
      (as_seq h0 aM, as_seq h0 accM))

inline_for_extraction noextract
val bn_mod_exp_loop: nLen:BN.meta_len
  -> (#[FStar.Tactics.Typeclasses.tcresolve ()] _ : Hacl.Bignum.Montgomery.mont nLen)
  -> bn_mod_exp_loop_st nLen

let bn_mod_exp_loop nLen #_ n nInv_u64 bBits bLen b aM accM =
  [@ inline_let]
  let rLen = nLen +. 1ul in
  [@inline_let]
  let spec h0 = S.bn_mod_exp_f (as_seq h0 n) nInv_u64 (v bBits) (v bLen) (as_seq h0 b) in
  let h0 = ST.get () in
  loop2 h0 bBits aM accM spec
  (fun i ->
    Lib.LoopCombinators.unfold_repeati (v bBits) (spec h0) (as_seq h0 aM, as_seq h0 accM) (v i);
    if BN.bn_is_bit_set bLen b i then
      BM.mul n nInv_u64 aM accM accM; // acc = (acc * a) % n
    BM.sqr n nInv_u64 aM aM // a = (a * a) % n
  )


inline_for_extraction noextract
val bn_mod_exp_mont:
    modBits:size_t{v modBits > 0}
  -> nLen:size_t{0 < v nLen /\ 128 * (v nLen + 1) <= max_size_t /\ v nLen == v (blocks modBits 64ul)}
  -> (#[FStar.Tactics.Typeclasses.tcresolve ()] _ : Hacl.Bignum.Montgomery.mont nLen)
  -> bn_mod_exp_loop:bn_mod_exp_loop_st nLen
  -> n:lbignum nLen
  -> a:lbignum nLen
  -> acc:lbignum nLen
  -> bBits:size_t{v bBits > 0}
  -> b:lbignum (blocks bBits 64ul)
  -> res:lbignum nLen ->
  Stack unit
  (requires fun h ->
    live h n /\ live h a /\ live h b /\ live h res /\ live h acc /\
    disjoint res a /\ disjoint res b /\ disjoint res n /\ disjoint res acc /\
    disjoint a n /\ disjoint acc n)
  (ensures  fun h0 _ h1 -> modifies (loc res) h0 h1 /\
    as_seq h1 res == S.bn_mod_exp_mont (v modBits) (v nLen) (as_seq h0 n) (as_seq h0 a) (as_seq h0 acc) (v bBits) (as_seq h0 b))

let bn_mod_exp_mont modBits nLen #_ bn_mod_exp_loop n a acc bBits b res =
  push_frame ();
  let rLen = nLen +! 1ul in
  let bLen = blocks bBits 64ul in
  let nInv_u64 = BM.mod_inv_u64 n.(0ul) in // n * nInv = 1 (mod (pow2 64))

  let r2 = create nLen (u64 0) in
  BM.precomp modBits n r2;

  let aM   = create rLen (u64 0) in
  let accM = create rLen (u64 0) in
  BM.to n nInv_u64 r2 a aM;
  BM.to n nInv_u64 r2 acc accM;
  bn_mod_exp_loop n nInv_u64 bBits bLen b aM accM;
  BM.from n nInv_u64 accM res;
  // Note here that type class resolution looks up in the parent type class.
  BN.sub_mask n res;
  pop_frame ()


inline_for_extraction noextract
val mk_bn_mod_exp:
    modBits:size_t{v modBits > 0}
  -> nLen:size_t{0 < v nLen /\ 128 * (v nLen + 1) <= max_size_t /\ v nLen == v (blocks modBits 64ul)}
  -> (#[FStar.Tactics.Typeclasses.tcresolve ()] _ : Hacl.Bignum.Montgomery.mont nLen)
  -> bn_mod_exp_loop:bn_mod_exp_loop_st nLen ->
  bn_mod_exp_st modBits nLen

let mk_bn_mod_exp modBits nLen #_ bn_mod_exp_loop n a bBits b res =
  push_frame ();
  let acc  = create nLen (u64 0) in
  BN.bn_from_uint nLen (u64 1) acc;
  bn_mod_exp_mont modBits nLen bn_mod_exp_loop n a acc bBits b res;
  pop_frame ()

/// A fully runtime implementation of modular exponentiation.

let bn_mod_exp_loop_runtime nLen = bn_mod_exp_loop nLen #(BM.mk_runtime_mont nLen)

[@CInline]
let bn_mod_exp modBits nLen =
  mk_bn_mod_exp modBits nLen #(BM.mk_runtime_mont nLen) (bn_mod_exp_loop_runtime nLen)
