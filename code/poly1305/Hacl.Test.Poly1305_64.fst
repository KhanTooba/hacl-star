module Hacl.Test.Poly1305_64

open FStar.HyperStack.All

module ST = FStar.HyperStack.ST

open FStar.Buffer
open Hacl.Cast

module Poly = Poly1305_64

val main: unit -> ST C.exit_code
  (requires (fun h -> True))
  (ensures  (fun h0 r h1 -> True))
let main () =
  push_frame();
  let len = 34ul in
  let len' = 34uL in
  let keysize = 32ul in
  let macsize = 16ul in
  let mac = create (0uy) 16ul in
  let plaintext = createL [
    0x43uy; 0x72uy; 0x79uy; 0x70uy; 0x74uy; 0x6fuy; 0x67uy; 0x72uy;
    0x61uy; 0x70uy; 0x68uy; 0x69uy; 0x63uy; 0x20uy; 0x46uy; 0x6fuy;
    0x72uy; 0x75uy; 0x6duy; 0x20uy; 0x52uy; 0x65uy; 0x73uy; 0x65uy;
    0x61uy; 0x72uy; 0x63uy; 0x68uy; 0x20uy; 0x47uy; 0x72uy; 0x6fuy;
    0x75uy; 0x70uy
    ] in
  let expected = createL [
    0xa8uy; 0x06uy; 0x1duy; 0xc1uy; 0x30uy; 0x51uy; 0x36uy; 0xc6uy;
    0xc2uy; 0x2buy; 0x8buy; 0xafuy; 0x0cuy; 0x01uy; 0x27uy; 0xa9uy
    ] in
  let key = createL [
    0x85uy; 0xd6uy; 0xbeuy; 0x78uy; 0x57uy; 0x55uy; 0x6duy; 0x33uy;
    0x7fuy; 0x44uy; 0x52uy; 0xfeuy; 0x42uy; 0xd5uy; 0x06uy; 0xa8uy;
    0x01uy; 0x03uy; 0x80uy; 0x8auy; 0xfbuy; 0x0duy; 0xb2uy; 0xfduy;
    0x4auy; 0xbfuy; 0xf6uy; 0xafuy; 0x41uy; 0x49uy; 0xf5uy; 0x1buy
    ] in
  (* Hacl.MAC.Poly1305_64.crypto_onetimeauth mac plaintext len' key; *)
  Poly.crypto_onetimeauth mac plaintext len' key;
  TestLib.compare_and_print (C.String.of_literal "poly1305") expected mac macsize;
  pop_frame();
  C.EXIT_SUCCESS
