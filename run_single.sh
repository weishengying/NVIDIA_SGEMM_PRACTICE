#!/bin/bash

# 单个kernel运行
kernel_num=$1
file_name="test_kernel_${kernel_num}.txt"
./build/sgemm ${kernel_num} | tee ./build/${file_name}