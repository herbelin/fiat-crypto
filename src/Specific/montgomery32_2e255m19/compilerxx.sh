#!/bin/sh
set -eu

g++ -fno-peephole2 `#GCC BUG 81300` -march=native -mtune=native -std=gnu++11 -O3 -flto -fomit-frame-pointer -fwrapv -Wno-attributes -fno-strict-aliasing -Da24_hex='0x3039' -Da24_val='12345' -Dmodulus_limbs='8' -Da_minus_two_over_four_array='{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x39}' -Dmodulus_bytes_val='32' -Dbitwidth='32' -Dmodulus_array='{0x7f,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xed}' -Dq_mpz='(1_mpz<<255) - 19' -Dlimb_weight_gaps_array='{32,32,32,32,32,32,32,32}' "$@"
