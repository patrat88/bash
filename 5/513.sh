#!/bin/bash
# Searching the smallest and the biggest value in array

array=(1 9 2 3 11 23 0 -3 31 11 93 223 -1312)
size=${#array[@]}

min=${array[0]}
max=${array[0]}

for i in `seq 0 $[size-1]`
do
	if [ ${array[$i]} -lt $min ]
	then
		min=${array[$i]}
	fi
	if [ ${array[$i]} -ge $max ]
	then
		max=${array[$i]}
	fi
done

echo "Min: $min"
echo "Max: $max"

