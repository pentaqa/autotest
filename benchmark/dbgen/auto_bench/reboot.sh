#!/bin/bash

SC_LIST=`ls $SC_PATH/`
SC_PATH=/autotest/benchmark/dbgen/auto_bench
SQL_PATH=/autotest/benchmark/dbgen/dml
EXEC_COUNT_PATH=$SC_PATH/

#===============================================
#TEST=INSERT, UPDATE, SELECT, INSERT+SELECT
#===============================================

###Enter the type of you need to test
TEST=INSERT 
###Enter the number of times to test
TEST_COUNT=3

if [-f $EXEC_COUNT_PATH/reboot_count] 
	then 
	source $EXEC_COUNT_PATH/reboot_count
	echo -e "Execute reboot_count!"
	if [ $EXEC_COUNT -ge 4 ] 
		then
			exit 0
	fi
	EXEC_COUNT=`expr $EXEC_COUNT + 1`
	source $SC_PATH/DML_$TEST.sh
else 
	EXEC_COUNT=1
	echo -e "Execute reboot_count!"
	source $SC_PATH/DML_$TEST.sh
fi
	#echo $"EXEC_COUNT = $[EXEC_COUNT]" > $EXEC_COUNT_PATH/reboot_count
	sed -i "3s/.*/"EXEC_COUNT=$[EXEC_COUNT]"/g" $EXEC_COUNT_PATH/reboot_count
