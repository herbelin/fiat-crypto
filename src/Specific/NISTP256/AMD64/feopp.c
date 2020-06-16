#include <stdint.h>
#include <stdbool.h>
#include <x86intrin.h>
#include "liblow.h"

#include "feopp.h"

typedef unsigned int uint128_t __attribute__((mode(TI)));

#if (defined(__GNUC__) || defined(__GNUG__)) && !(defined(__clang__)||defined(__INTEL_COMPILER))
// https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81294
#define _subborrow_u32 __builtin_ia32_sbb_u32
#define _subborrow_u64 __builtin_ia32_sbb_u64
#endif

#undef force_inline
#define force_inline __attribute__((always_inline))

void force_inline feopp(uint64_t* out, uint64_t x5, uint64_t x6, uint64_t x4, uint64_t x2)
{  uint64_t x8; uint8_t/*bool*/ x9 = _subborrow_u64(0x0, 0x0, x2, &x8);
{  uint64_t x11; uint8_t/*bool*/ x12 = _subborrow_u64(x9, 0x0, x4, &x11);
{  uint64_t x14; uint8_t/*bool*/ x15 = _subborrow_u64(x12, 0x0, x6, &x14);
{  uint64_t x17; uint8_t/*bool*/ x18 = _subborrow_u64(x15, 0x0, x5, &x17);
{  uint64_t x19 = cmovznz64(x18, 0x0, 0xffffffffffffffffL);
{  uint64_t x20 = (x19 & 0xffffffffffffffffL);
{  uint64_t x22; uint8_t/*bool*/ x23 = _addcarryx_u64(0x0, x8, x20, &x22);
{  uint64_t x24 = (x19 & 0xffffffff);
{  uint64_t x26; uint8_t/*bool*/ x27 = _addcarryx_u64(x23, x11, x24, &x26);
{  uint64_t x29; uint8_t/*bool*/ x30 = _addcarryx_u64(x27, x14, 0x0, &x29);
{  uint64_t x31 = (x19 & 0xffffffff00000001L);
{  uint64_t x33; uint8_t/*bool*/ _ = _addcarryx_u64(x30, x17, x31, &x33);
out[0] = x33;
out[1] = x29;
out[2] = x26;
out[3] = x22;
}}}}}}}}}}}}
// caller: uint64_t out[4];