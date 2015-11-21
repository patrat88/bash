#!/bin/bash
# Printing array elements

array=(0 9 1 8 2 7 3 6 4 5)

# Maybe the not the best way
for i in 1 2 3 4 5 6 7 8 9 10 
do
	echo ${array[$i]}
done

# Better way to print array elements
for i in {0..10}
do
	echo ${array[$i]}
done

