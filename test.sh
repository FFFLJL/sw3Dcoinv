#!/bin/bash

rm -f perf.log

## eg: ./32_32_32_64_64 1 32 32 32 64 64 1 32 64
## means D=32, H=32, W=32, Ci=64, Co=64, bH=32, bCo=64 in our paper


echo "" >> perf.log
bsub -b -I -J simd_test -q q_sw_expr -n 1 -cgsp 64 -host_stack 1024 -share_size 6500 ./32_32_32_64_64 1 32 32 32 64 64 1 32 64 >> perf.log
sleep 1

echo "" >> perf.log
bsub -b -I -J simd_test -q q_sw_expr -n 1 -cgsp 64 -host_stack 1024 -share_size 6500 ./32_32_32_128_128 1 32 32 32 128 128 1 16 64 >> perf.log
sleep 1

echo "" >> perf.log
bsub -b -I -J simd_test -q q_sw_expr -n 1 -cgsp 64 -host_stack 1024 -share_size 6500 ./24_24_24_64_64 1 24 24 24 64 64 1 24 64 >> perf.log
sleep 1

echo "" >> perf.log
bsub -b -I -J simd_test -q q_sw_expr -n 1 -cgsp 64 -host_stack 1024 -share_size 6500 ./24_24_24_128_128 1 24 24 24 128 128 1 24 128 >> perf.log
sleep 1

echo "" >> perf.log
bsub -b -I -J simd_test -q q_sw_expr -n 1 -cgsp 64 -host_stack 1024 -share_size 6500 ./16_16_16_64_64 1 16 16 16 64 64 1 16 64 >> perf.log
sleep 1

echo "" >> perf.log
bsub -b -I -J simd_test -q q_sw_expr -n 1 -cgsp 64 -host_stack 1024 -share_size 6500 ./16_16_16_128_128 1 16 16 16 128 128 1 16 128 >> perf.log
sleep 1

echo "" >> perf.log
bsub -b -I -J simd_test -q q_sw_expr -n 1 -cgsp 64 -host_stack 1024 -share_size 6500 ./8_8_8_64_64 1 8 8 8 64 64 1 8 64 >> perf.log
sleep 1

echo "" >> perf.log
bsub -b -I -J simd_test -q q_sw_expr -n 1 -cgsp 64 -host_stack 1024 -share_size 6500 ./8_8_8_128_128 1 8 8 8 128 128 1 8 128 >> perf.log
sleep 1

