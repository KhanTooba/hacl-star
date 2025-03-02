# For 64 bit : RV64
sudo clang-14 -march=rv64gc -O0 -S -g -emit-llvm Hacl_HMAC.c -I ../karamel/include/ -I ../karamel/krmllib/dist/minimal/ -c -o hmac.ll --target=riscv64 -mabi=lp64d -I /usr/lib/llvm-14/lib/clang/14.0.6/include/riscv_vector.h -I /usr/riscv64-linux-gnu/include/

# For 32 bit : RV32
sudo clang-14 -O0 -S -g -emit-llvm Hacl_HMAC.c -I ../karamel/include/ -I ../karamel/krmllib/dist/minimal/ -c -o hmac32.ll --target=riscv32 -mabi=ilp32d -I /usr/lib/llvm-14/lib/clang/14.0.6/include/riscv_vector.h -I /opt/riscv/riscv32-unknown-elf/include
