#!/bin/sh
cd ../coreutils
pwd
# set variables as to chose which testcases to build
# cu-x86-gcc-dynamic-native

# 2nd testset: cu-x86-gcc-dynamic-native
./configure
./make
echo $(find src/ -executable -type f)
# cp $(find src/ -executable -type f) ../bin/cu-x86-gcc-dynamic
# 4th testset: cu-rv64-gcc-dynamic-cross
# 1st testset: cu-x86-gcc-static-native
# 3rd testset: cu-rv64-gcc-static-cross
