#!/bin/bash
# Printing array elements using seq

array=(1 9 2 3 11 23 0)
size=${#array[@]}

for i in `seq 0 $[size-1]`
do 
	echo ${array[$i]}
done
