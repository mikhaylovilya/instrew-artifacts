#!/bin/sh
CU_X86_INSTREW_PATH=$HOME/repos/instrew-artifacts/bin/cu-x86-gcc-static-instrew/
CU_RV64_INSTREW_PATH=$HOME/repos/instrew-artifacts/bin/cu-rv64-gcc-static-instrew/

for name in $(find $CU_X86_INSTREW_PATH -type f); 
do
	rm $name;
done

for name in $(find $CU_RV64_INSTREW_PATH -type f); 
do
	rm $name;
done

	
