#!/bin/bash
# Dialog example - selection list
. function.sh
. chose_system.sh

FILE="file.$$"
ELEM_NUM=4
dialog_checklist
result=$?

data=`edit_data`
clear

linux=0; bsd=0; mac=0; win=0

for i in `seq 1 $ELEM_NUM`
do
	value=`echo $data | awk "{print $"$i"}"`
	case $value in
		"1") linux=1 ;;
		"2") bsd=1 ;;
		"3") mac=1 ;;
		"4") win=1 ;;
	esac
done

system

rm -f $FILE
exit 0	
