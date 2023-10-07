#!/bin/bash

# 全部kernel运行
rm ./build/test_kernel*
echo -n "test_kernel:"
for((i=0;i<=2;i++))
do
    echo -n "${i}..."
    file_name="./build/test_kernel_${i}.txt"
	./build/sgemm ${i} >> ${file_name}
done
echo "end"