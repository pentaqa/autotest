#!/bin/bash

EXEC_COUNT_PATH=/damo/
SC_LIST=`ls $SC_PATH/`
SC_PATH=/autotest/benchmark/dbgen/

#===============================================
#TEST=INSERT, UPDATE, SELECT, INSERT+SELECT
#===============================================

TEST=INSERT ###Enter capital letters

if [-f $EXEC_COUNT_PATH/reboot_count] then 
	. $EXEC_COUNT_PATH/reboot_count
	if [$EXEC_COUNT -ge 4] then
		exit
	fi
	EXEC_COUNT=`expr $EXEC_COUNT + 1`
	. $SC_PATH/DML_$TEST.sh
else 
	EXEC_COUNT=1
	. $SC_PATH/DML_$TEST.sh
fi
	echo $"EXEC_COUNT = $[EXEC_COUNT]" > $EXEC_COUNT_PATH/reboot_count
