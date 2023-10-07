#!/bin/bash

# 全部kernel运行
rm ./build/test_kernel*
echo -n "test_kernel:"
for((i=0;i<=7;i++))
do
    echo -n "${i}..."
    file_name="./build/test_kernel_${i}.txt"
	./build/sgemm ${i} >> ${file_name}
done

# 单个kernel运行
# kernel_num=$1
# file_name="test_kernel_${kernel_num}.txt"
# ./sgemm ${kernel_num} | tee ./test/${file_name}