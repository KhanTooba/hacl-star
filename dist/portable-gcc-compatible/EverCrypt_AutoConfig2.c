/* MIT License
 *
 * Copyright (c) 2016-2022 INRIA, CMU and Microsoft Corporation
 * Copyright (c) 2022-2023 HACL* Contributors
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */


#include "EverCrypt_AutoConfig2.h"

#include "internal/Vale.h"
#include "evercrypt_targetconfig.h"

/* SNIPPET_START: cpu_has_shaext */

static bool cpu_has_shaext[1U] = { false };

/* SNIPPET_END: cpu_has_shaext */

/* SNIPPET_START: cpu_has_aesni */

static bool cpu_has_aesni[1U] = { false };

/* SNIPPET_END: cpu_has_aesni */

/* SNIPPET_START: cpu_has_pclmulqdq */

static bool cpu_has_pclmulqdq[1U] = { false };

/* SNIPPET_END: cpu_has_pclmulqdq */

/* SNIPPET_START: cpu_has_avx2 */

static bool cpu_has_avx2[1U] = { false };

/* SNIPPET_END: cpu_has_avx2 */

/* SNIPPET_START: cpu_has_avx */

static bool cpu_has_avx[1U] = { false };

/* SNIPPET_END: cpu_has_avx */

/* SNIPPET_START: cpu_has_bmi2 */

static bool cpu_has_bmi2[1U] = { false };

/* SNIPPET_END: cpu_has_bmi2 */

/* SNIPPET_START: cpu_has_adx */

static bool cpu_has_adx[1U] = { false };

/* SNIPPET_END: cpu_has_adx */

/* SNIPPET_START: cpu_has_sse */

static bool cpu_has_sse[1U] = { false };

/* SNIPPET_END: cpu_has_sse */

/* SNIPPET_START: cpu_has_movbe */

static bool cpu_has_movbe[1U] = { false };

/* SNIPPET_END: cpu_has_movbe */

/* SNIPPET_START: cpu_has_rdrand */

static bool cpu_has_rdrand[1U] = { false };

/* SNIPPET_END: cpu_has_rdrand */

/* SNIPPET_START: cpu_has_avx512 */

static bool cpu_has_avx512[1U] = { false };

/* SNIPPET_END: cpu_has_avx512 */

/* SNIPPET_START: EverCrypt_AutoConfig2_has_shaext */

bool EverCrypt_AutoConfig2_has_shaext(void)
{
  return cpu_has_shaext[0U];
}

/* SNIPPET_END: EverCrypt_AutoConfig2_has_shaext */

/* SNIPPET_START: EverCrypt_AutoConfig2_has_aesni */

bool EverCrypt_AutoConfig2_has_aesni(void)
{
  return cpu_has_aesni[0U];
}

/* SNIPPET_END: EverCrypt_AutoConfig2_has_aesni */

/* SNIPPET_START: EverCrypt_AutoConfig2_has_pclmulqdq */

bool EverCrypt_AutoConfig2_has_pclmulqdq(void)
{
  return cpu_has_pclmulqdq[0U];
}

/* SNIPPET_END: EverCrypt_AutoConfig2_has_pclmulqdq */

/* SNIPPET_START: EverCrypt_AutoConfig2_has_avx2 */

bool EverCrypt_AutoConfig2_has_avx2(void)
{
  return cpu_has_avx2[0U];
}

/* SNIPPET_END: EverCrypt_AutoConfig2_has_avx2 */

/* SNIPPET_START: EverCrypt_AutoConfig2_has_avx */

bool EverCrypt_AutoConfig2_has_avx(void)
{
  return cpu_has_avx[0U];
}

/* SNIPPET_END: EverCrypt_AutoConfig2_has_avx */

/* SNIPPET_START: EverCrypt_AutoConfig2_has_bmi2 */

bool EverCrypt_AutoConfig2_has_bmi2(void)
{
  return cpu_has_bmi2[0U];
}

/* SNIPPET_END: EverCrypt_AutoConfig2_has_bmi2 */

/* SNIPPET_START: EverCrypt_AutoConfig2_has_adx */

bool EverCrypt_AutoConfig2_has_adx(void)
{
  return cpu_has_adx[0U];
}

/* SNIPPET_END: EverCrypt_AutoConfig2_has_adx */

/* SNIPPET_START: EverCrypt_AutoConfig2_has_sse */

bool EverCrypt_AutoConfig2_has_sse(void)
{
  return cpu_has_sse[0U];
}

/* SNIPPET_END: EverCrypt_AutoConfig2_has_sse */

/* SNIPPET_START: EverCrypt_AutoConfig2_has_movbe */

bool EverCrypt_AutoConfig2_has_movbe(void)
{
  return cpu_has_movbe[0U];
}

/* SNIPPET_END: EverCrypt_AutoConfig2_has_movbe */

/* SNIPPET_START: EverCrypt_AutoConfig2_has_rdrand */

bool EverCrypt_AutoConfig2_has_rdrand(void)
{
  return cpu_has_rdrand[0U];
}

/* SNIPPET_END: EverCrypt_AutoConfig2_has_rdrand */

/* SNIPPET_START: EverCrypt_AutoConfig2_has_avx512 */

bool EverCrypt_AutoConfig2_has_avx512(void)
{
  return cpu_has_avx512[0U];
}

/* SNIPPET_END: EverCrypt_AutoConfig2_has_avx512 */

/* SNIPPET_START: EverCrypt_AutoConfig2_recall */

void EverCrypt_AutoConfig2_recall(void)
{

}

/* SNIPPET_END: EverCrypt_AutoConfig2_recall */

/* SNIPPET_START: EverCrypt_AutoConfig2_init */

void EverCrypt_AutoConfig2_init(void)
{
  #if HACL_CAN_COMPILE_VALE
  if (check_aesni() != (uint64_t)0U)
  {
    cpu_has_aesni[0U] = true;
    cpu_has_pclmulqdq[0U] = true;
  }
  if (check_sha() != (uint64_t)0U)
  {
    cpu_has_shaext[0U] = true;
  }
  if (check_adx_bmi2() != (uint64_t)0U)
  {
    cpu_has_bmi2[0U] = true;
    cpu_has_adx[0U] = true;
  }
  if (check_avx() != (uint64_t)0U)
  {
    if (check_osxsave() != (uint64_t)0U)
    {
      if (check_avx_xcr0() != (uint64_t)0U)
      {
        cpu_has_avx[0U] = true;
      }
    }
  }
  if (check_avx2() != (uint64_t)0U)
  {
    if (check_osxsave() != (uint64_t)0U)
    {
      if (check_avx_xcr0() != (uint64_t)0U)
      {
        cpu_has_avx2[0U] = true;
      }
    }
  }
  if (check_sse() != (uint64_t)0U)
  {
    cpu_has_sse[0U] = true;
  }
  if (check_movbe() != (uint64_t)0U)
  {
    cpu_has_movbe[0U] = true;
  }
  if (check_rdrand() != (uint64_t)0U)
  {
    cpu_has_rdrand[0U] = true;
  }
  if (check_avx512() != (uint64_t)0U)
  {
    if (check_osxsave() != (uint64_t)0U)
    {
      if (check_avx_xcr0() != (uint64_t)0U)
      {
        if (check_avx512_xcr0() != (uint64_t)0U)
        {
          cpu_has_avx512[0U] = true;
          return;
        }
        return;
      }
      return;
    }
    return;
  }
  #endif
}

/* SNIPPET_END: EverCrypt_AutoConfig2_init */

/* SNIPPET_START: EverCrypt_AutoConfig2_disable_avx2 */

void EverCrypt_AutoConfig2_disable_avx2(void)
{
  cpu_has_avx2[0U] = false;
}

/* SNIPPET_END: EverCrypt_AutoConfig2_disable_avx2 */

/* SNIPPET_START: EverCrypt_AutoConfig2_disable_avx */

void EverCrypt_AutoConfig2_disable_avx(void)
{
  cpu_has_avx[0U] = false;
}

/* SNIPPET_END: EverCrypt_AutoConfig2_disable_avx */

/* SNIPPET_START: EverCrypt_AutoConfig2_disable_bmi2 */

void EverCrypt_AutoConfig2_disable_bmi2(void)
{
  cpu_has_bmi2[0U] = false;
}

/* SNIPPET_END: EverCrypt_AutoConfig2_disable_bmi2 */

/* SNIPPET_START: EverCrypt_AutoConfig2_disable_adx */

void EverCrypt_AutoConfig2_disable_adx(void)
{
  cpu_has_adx[0U] = false;
}

/* SNIPPET_END: EverCrypt_AutoConfig2_disable_adx */

/* SNIPPET_START: EverCrypt_AutoConfig2_disable_shaext */

void EverCrypt_AutoConfig2_disable_shaext(void)
{
  cpu_has_shaext[0U] = false;
}

/* SNIPPET_END: EverCrypt_AutoConfig2_disable_shaext */

/* SNIPPET_START: EverCrypt_AutoConfig2_disable_aesni */

void EverCrypt_AutoConfig2_disable_aesni(void)
{
  cpu_has_aesni[0U] = false;
}

/* SNIPPET_END: EverCrypt_AutoConfig2_disable_aesni */

/* SNIPPET_START: EverCrypt_AutoConfig2_disable_pclmulqdq */

void EverCrypt_AutoConfig2_disable_pclmulqdq(void)
{
  cpu_has_pclmulqdq[0U] = false;
}

/* SNIPPET_END: EverCrypt_AutoConfig2_disable_pclmulqdq */

/* SNIPPET_START: EverCrypt_AutoConfig2_disable_sse */

void EverCrypt_AutoConfig2_disable_sse(void)
{
  cpu_has_sse[0U] = false;
}

/* SNIPPET_END: EverCrypt_AutoConfig2_disable_sse */

/* SNIPPET_START: EverCrypt_AutoConfig2_disable_movbe */

void EverCrypt_AutoConfig2_disable_movbe(void)
{
  cpu_has_movbe[0U] = false;
}

/* SNIPPET_END: EverCrypt_AutoConfig2_disable_movbe */

/* SNIPPET_START: EverCrypt_AutoConfig2_disable_rdrand */

void EverCrypt_AutoConfig2_disable_rdrand(void)
{
  cpu_has_rdrand[0U] = false;
}

/* SNIPPET_END: EverCrypt_AutoConfig2_disable_rdrand */

/* SNIPPET_START: EverCrypt_AutoConfig2_disable_avx512 */

void EverCrypt_AutoConfig2_disable_avx512(void)
{
  cpu_has_avx512[0U] = false;
}

/* SNIPPET_END: EverCrypt_AutoConfig2_disable_avx512 */

/* SNIPPET_START: EverCrypt_AutoConfig2_has_vec128 */

bool EverCrypt_AutoConfig2_has_vec128(void)
{
  bool avx = EverCrypt_AutoConfig2_has_avx();
  bool other = has_vec128_not_avx();
  return avx || other;
}

/* SNIPPET_END: EverCrypt_AutoConfig2_has_vec128 */

/* SNIPPET_START: EverCrypt_AutoConfig2_has_vec256 */

bool EverCrypt_AutoConfig2_has_vec256(void)
{
  bool avx2 = EverCrypt_AutoConfig2_has_avx2();
  bool other = has_vec256_not_avx2();
  return avx2 || other;
}

/* SNIPPET_END: EverCrypt_AutoConfig2_has_vec256 */

