module Spec.SHA3.Incremental

module S = FStar.Seq

open Spec.Agile.Hash
open Spec.Hash.Definitions
open Spec.Hash.Incremental.Definitions
open Spec.Hash.PadFinish
open Spec.Hash.Lemmas

friend Spec.Agile.Hash

open FStar.Mul
module Loops = Lib.LoopCombinators
module UpdateMulti = Lib.UpdateMulti

open Lib.IntTypes

#set-options "--fuel 0 --ifuel 0 --z3rlimit 200"

let update_is_update_multi (a:sha3_alg) (inp:bytes{S.length inp == block_length a}) (s:words_state a)
  : Lemma (Spec.SHA3.absorb_inner (1088/8) inp s == update_multi a s () inp)
  = let rateInBytes = 1088/8 in
    let f = Spec.SHA3.absorb_inner rateInBytes in
    let bs = block_length a in
    let f' = Lib.Sequence.repeat_blocks_f bs inp f 1 in
    assert (bs == rateInBytes);
    calc (==) {
      update_multi a s () inp;
      (==) { }
      Lib.Sequence.repeat_blocks_multi #_ #(words_state a) rateInBytes inp f s;
      (==) { Lib.Sequence.lemma_repeat_blocks_multi #_ #(words_state a) bs inp f s }
      (let len = S.length inp in
       let nb = len / bs in
      Loops.repeati #(words_state a) nb (Lib.Sequence.repeat_blocks_f bs inp f nb) s);
      (==) {
        Loops.unfold_repeati 1 f' s 0;
        Loops.eq_repeati0 1 f' s }
      f' 0 s;
      (==) { assert (Seq.slice inp (0 * bs) (0 * bs + bs) `S.equal` inp) }
      f inp s;
    }

let sha3_is_incremental1
  (a: sha3_alg)
  (input: bytes): Lemma (hash_incremental a input `S.equal` (
    let s = Lib.Sequence.create 25 (u64 0) in
    let rateInBytes = 1088 / 8 in
    let delimitedSuffix = byte 0x06 in
    let bs, l = UpdateMulti.split_at_last rateInBytes input in
    let s = update_multi a s () bs in
    let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes (S.length l) l s in
    finish a s))
= calc (==) {
       hash_incremental a input;
       (==) { }
       (let s = init a in
        let bs, l = split_blocks a input in
        let s = update_multi a s () bs in
        let s = update_last a s (S.length bs) l in
        finish a s);
       (==) { }
       (let s = Lib.Sequence.create 25 (u64 0) in
        let rateInBytes = 1088/8 in
        let bs, l = UpdateMulti.split_at_last_lazy rateInBytes input in
        let s = update_multi a s () bs in
        let s = update_last a s (S.length bs) l in
        finish a s);
       (==) { } (
       let s = Lib.Sequence.create 25 (u64 0) in
       let rateInBytes = 1088 / 8 in
       let delimitedSuffix = byte 0x06 in
       let bs, l = UpdateMulti.split_at_last_lazy rateInBytes input in
       if S.length l = rateInBytes then
         let s = update_multi a s () bs in
         let s = Spec.SHA3.absorb_inner rateInBytes l s in
         let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes 0 S.empty s in
         finish a s
       else
         let s = update_multi a s () bs in
         let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes (S.length l) l s in
       finish a s
       );
       (==) { (
         let s = Lib.Sequence.create 25 (u64 0) in
         let rateInBytes = 1088 / 8 in
         let delimitedSuffix = byte 0x06 in
         let bs, l = UpdateMulti.split_at_last_lazy rateInBytes input in
         if S.length l = rateInBytes then
           let s = update_multi a s () bs in
           update_is_update_multi a l s
         else ()
         ) } (
       let s = Lib.Sequence.create 25 (u64 0) in
       let rateInBytes = 1088 / 8 in
       let delimitedSuffix = byte 0x06 in
       let bs, l = UpdateMulti.split_at_last_lazy rateInBytes input in
       if S.length l = rateInBytes then
         let s = update_multi a s () bs in
         let s = update_multi a s () l in
         let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes 0 S.empty s in
         finish a s
       else
         let s = update_multi a s () bs in
         let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes (S.length l) l s in
       finish a s
       );
       (==) { (
         let s = Lib.Sequence.create 25 (u64 0) in
         let rateInBytes = 1088 / 8 in
         let delimitedSuffix = byte 0x06 in
         let bs, l = UpdateMulti.split_at_last_lazy rateInBytes input in
         if S.length l = rateInBytes then
           Lib.Sequence.Lemmas.repeat_blocks_multi_split (block_length a) (S.length bs) (bs `S.append` l) (Spec.SHA3.absorb_inner rateInBytes) s
         else () ) } (
       let s = Lib.Sequence.create 25 (u64 0) in
       let rateInBytes = 1088 / 8 in
       let delimitedSuffix = byte 0x06 in
       let bs, l = UpdateMulti.split_at_last_lazy rateInBytes input in
       if S.length l = rateInBytes then
         let s = update_multi a s () (bs `S.append` l) in
         let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes 0 S.empty s in
         finish a s
       else
         let s = update_multi a s () bs in
         let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes (S.length l) l s in
       finish a s
       );
  };
  calc (S.equal) {
    (
       let s = Lib.Sequence.create 25 (u64 0) in
       let rateInBytes = 1088 / 8 in
       let delimitedSuffix = byte 0x06 in
       let bs, l = UpdateMulti.split_at_last_lazy rateInBytes input in
       if S.length l = rateInBytes then
         let s = update_multi a s () (bs `S.append` l) in
         let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes 0 S.empty s in
         finish a s
       else
         let s = update_multi a s () bs in
         let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes (S.length l) l s in
       finish a s
       );

       (S.equal) {
       let s = Lib.Sequence.create 25 (u64 0) in
       let rateInBytes = 1088 / 8 in
       let bs, l = UpdateMulti.split_at_last_lazy rateInBytes input in
       let s = update_multi a s () bs in
       if S.length l = rateInBytes then begin
         let bs', l' = UpdateMulti.split_at_last rateInBytes input in
         // TODO: strengthen this... NL arith!
         assert (bs' `S.equal` (bs `S.append` l));
         assert (l' `S.equal` S.empty)
       end else
         ()
     } (
       let s = Lib.Sequence.create 25 (u64 0) in
       // Also the block size
       let rateInBytes = 1088 / 8 in
       let delimitedSuffix = byte 0x06 in
       let bs, l = UpdateMulti.split_at_last rateInBytes input in
       let s = update_multi a s () bs in
       let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes (S.length l) l s in
       finish a s
     );
  }

(*
let sha3_update (a: sha3_alg) (s: words_state' a) (b: bytes { S.length b = block_length a }): words_state' a =
    let rateInBytes = 1088 / 8 in
  Spec.SHA3.absorb_inner rateInBytes b s

let sha3_update_last (a: sha3_alg) (s: words_state' a) (l: bytes { S.length l < block_length a }):
  words_state' a
=
  let rateInBytes = 1088 / 8 in
  let delimitedSuffix = byte 0x06 in
  Spec.SHA3.absorb_last delimitedSuffix rateInBytes (S.length l) l s

#push-options "--fuel 1"
let rec sha3_ignores_extra_state (a: sha3_alg) (acc: words_state' a) (bs: bytes): Lemma
  (requires S.length bs % block_length a = 0)
  (ensures (
    let acc1, () = Lib.UpdateMulti.mk_update_multi (block_length a) (update a) (acc, ()) bs in
    let acc2 = Lib.UpdateMulti.mk_update_multi (block_length a) (sha3_update a) acc bs in
    acc1 == acc2))
  (decreases S.length bs)
=
  if S.length bs = 0 then
    ()
  else
    let block, rem = Lib.UpdateMulti.split_block (block_length a) bs 1 in
    let acc = sha3_update a acc block in
    sha3_ignores_extra_state a acc rem
#pop-options
*)

let sha3_is_incremental2
  (a: sha3_alg)
  (input: bytes): Lemma (hash a input `S.equal` (
    let s = Lib.Sequence.create 25 (u64 0) in
    let rateInBytes = 1088 / 8 in
    let delimitedSuffix = byte 0x06 in
    let bs, l = UpdateMulti.split_at_last rateInBytes input in
    let s = update_multi a s () bs in
    let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes (S.length l) l s in
    finish a s))
= admit()

(*
  calc (S.equal) { (
    let s = Lib.Sequence.create 25 (u64 0), () in
    let rateInBytes = 1088 / 8 in
    let delimitedSuffix = byte 0x06 in
    let bs, l = UpdateMulti.split_at_last rateInBytes input in
    let s, _ = update_multi a s bs in
    let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes (S.length l) l s, () in
    finish a s
  );
  (S.equal) {
  } (
    let s = Lib.Sequence.create 25 (u64 0), () in
    let rateInBytes = 1088 / 8 in
    let delimitedSuffix = byte 0x06 in
    let bs, l = UpdateMulti.split_at_last rateInBytes input in
    let s, _ = Lib.UpdateMulti.mk_update_multi (block_length a) (update a) s bs in
    let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes (S.length l) l s, () in
    finish a s
  );
  (S.equal) {
    let s = Lib.Sequence.create 25 (u64 0) in
    let rateInBytes = 1088 / 8 in
    let delimitedSuffix = byte 0x06 in
    let bs, l = UpdateMulti.split_at_last rateInBytes input in
    sha3_ignores_extra_state a s bs
  } (
    let s = Lib.Sequence.create 25 (u64 0) in
    let rateInBytes = 1088 / 8 in
    let delimitedSuffix = byte 0x06 in
    let bs, l = UpdateMulti.split_at_last rateInBytes input in
    let s, () = Lib.UpdateMulti.mk_update_multi #(words_state' a) (block_length a) (sha3_update a) s bs, () in
    let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes (S.length l) l s, () in
    finish a s
  );
  // This step does not work unless the type argument to update_multi is
  // explicitly instantiated. The trefl is here only to help debug. Use
  // #set-options "--print_implicits" to see the issue.
  (==) {
    (_ by (FStar.Tactics.trefl()))
  } (
    let s = Lib.Sequence.create 25 (u64 0) in
    let rateInBytes = 1088 / 8 in
    let delimitedSuffix = byte 0x06 in
    let bs, l = UpdateMulti.split_at_last rateInBytes input in
    let s = Lib.UpdateMulti.mk_update_multi #(words_state' a) (block_length a) (sha3_update a) s bs in
    let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes (S.length l) l s, () in
    finish a s
  );
  (S.equal) {
  } (
    let s = Lib.Sequence.create 25 (u64 0) in
    let rateInBytes = 1088 / 8 in
    let delimitedSuffix = byte 0x06 in
    let bs, l = UpdateMulti.split_at_last rateInBytes input in
    let s = Lib.UpdateMulti.mk_update_multi #(words_state' a) (block_length a) (sha3_update a) s bs in
    let s = sha3_update_last a s l, () in
    finish a s
  );
  (==) {
    let s = Lib.Sequence.create 25 (u64 0) in
    let rateInBytes = 1088 / 8 in
    Lib.UpdateMulti.Lemmas.update_full_is_repeat_blocks rateInBytes (sha3_update a) (sha3_update_last a) s input input
  } (
    let s = Lib.Sequence.create 25 (u64 0) in
    let rateInBytes = 1088 / 8 in
    let delimitedSuffix = byte 0x06 in
    let s = Lib.Sequence.repeat_blocks #uint8 rateInBytes input
      (Lib.UpdateMulti.Lemmas.repeat_f rateInBytes (sha3_update a))
      (Lib.UpdateMulti.Lemmas.repeat_l rateInBytes (sha3_update_last a) input)
      s, ()
    in
    finish a s
  );
  (==) {
    let s = Lib.Sequence.create 25 (u64 0) in
    let rateInBytes = 1088 / 8 in
    let delimitedSuffix = byte 0x06 in
    Lib.Sequence.Lemmas.repeat_blocks_extensionality #uint8 #(words_state' a) #(words_state' a) rateInBytes input
      (Lib.UpdateMulti.Lemmas.repeat_f rateInBytes (sha3_update a))
      (Spec.SHA3.absorb_inner rateInBytes)
      (Lib.UpdateMulti.Lemmas.repeat_l rateInBytes (sha3_update_last a) input)
      (Spec.SHA3.absorb_last delimitedSuffix rateInBytes)
      s
  } (
    let s = Lib.Sequence.create 25 (u64 0) in
    let rateInBytes = 1088 / 8 in
    let delimitedSuffix = byte 0x06 in
    let s = Lib.Sequence.repeat_blocks #uint8 #(words_state' a) #(words_state' a) rateInBytes input
      (Spec.SHA3.absorb_inner rateInBytes)
      (Spec.SHA3.absorb_last delimitedSuffix rateInBytes)
      s, ()
    in
    finish a s
  );
  (==) {
    // sha3_state_is_hash_state
  } (
    let s = Lib.Sequence.create 25 (u64 0) in
    let rateInBytes = 1088 / 8 in
    let delimitedSuffix = byte 0x06 in
    let s = Lib.Sequence.repeat_blocks #uint8 #Spec.SHA3.state #Spec.SHA3.state rateInBytes input
      (Spec.SHA3.absorb_inner rateInBytes)
      (Spec.SHA3.absorb_last delimitedSuffix rateInBytes)
      s
    in
    Spec.SHA3.squeeze s rateInBytes 32
  );
  (==) {
  }
    Spec.SHA3.sha3_256 (S.length input) input;
  }
*)
let sha3_is_incremental
  (a: sha3_alg)
  (input: bytes): Lemma (hash_incremental a input `S.equal` hash a input)
=
  assert (hash a input == Spec.SHA3.keccak 1088 512 (S.length input) input (byte 0x06) 32);
  calc (S.equal) {
    hash_incremental a input;
  (S.equal) { sha3_is_incremental1 a input } (
    let s = Lib.Sequence.create 25 (u64 0) in
    let rateInBytes = 1088 / 8 in
    let delimitedSuffix = byte 0x06 in
    let bs, l = UpdateMulti.split_at_last rateInBytes input in
    let s = update_multi a s () bs in
    let s = Spec.SHA3.absorb_last delimitedSuffix rateInBytes (S.length l) l s in
    finish a s);
  (S.equal) { sha3_is_incremental2 a input }
    hash a input;
  }
