#include <riscv_vector.h>

int main() {
    vbool64_t mask;
    mask = vsetvl(64);  // Use RVV intrinsic
    return 0;
}

