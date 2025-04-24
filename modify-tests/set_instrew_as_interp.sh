#!/bin/sh -x
CU_X86_PATH=$HOME/repos/instrew-artifacts/bin/cu-x86-gcc-static/
CU_RV64_PATH=$HOME/repos/instrew-artifacts/bin/cu-rv64-gcc-static/
INSTREW_PATH=$HOME/repos/instrew/build-gcc-14-release/server/instrew

CU_X86_INSTREW_PATH=$HOME/repos/instrew-artifacts/bin/cu-x86-gcc-static-instrew/
CU_RV64_INSTREW_PATH=$HOME/repos/instrew-artifacts/bin/cu-rv64-gcc-static-instrew/

for name in $(find $CU_X86_PATH -executable -type f);
do
	TEST_FILE=$CU_X86_INSTREW_PATH$(basename $name); 
	if [ ! -f $TEST_FILE ];
	then	
		echo "$INSTREW_PATH $name \$@" > $TEST_FILE; 
		chmod +x $TEST_FILE;
	fi
done

for name in $(find $CU_RV64_PATH -executable -type f);
do 
	TEST_FILE=$CU_RV64_INSTREW_PATH$(basename $name);
	if [ ! -f $TEST_FILE ];
	then
		echo "$INSTREW_PATH $name \$@" > $TEST_FILE; 
		chmod +x $TEST_FILE; 
	fi
done
