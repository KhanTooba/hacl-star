/* This file was auto-generated by KreMLin! */
#include "kremlib.h"
#ifndef __MPFR_H
#define __MPFR_H


#include "FStar.h"
#include "testlib.h"

typedef uint64_t MPFR_Add1sp1_u64;

typedef int64_t MPFR_Add1sp1_i64;

typedef struct 
{
  int32_t sign;
  int32_t ax;
  uint64_t am;
  uint64_t rb;
  uint64_t sb;
}
MPFR_Add1sp1_state;

typedef struct 
{
  uint64_t fst;
  int32_t snd;
}
K___uint64_t_int32_t;

int32_t
MPFR_mpfr_add1sp1(
  MPFR_Lib_mpfr_struct *x0,
  MPFR_Lib_mpfr_struct *x1,
  MPFR_Lib_mpfr_struct *x2,
  MPFR_Lib_mpfr_rnd_t x3,
  uint32_t x4
);
#endif
