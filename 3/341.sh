# !/bin/bash
# Arrays in bash

array=(1 3 9 "String" OtherString)
echo "Printing values from array"
echo ${array[0]}
echo ${array[1]}
echo ${array[2]}
echo ${array[3]}
echo ${array[4]}
echo ${array[5]}

echo "Change value of array[0]"
array[0]=99
echo ${array[0]}

echo "Print all elements in array"
echo ${array[*]}
echo ${array[@]}

echo "Print number of element in array"
echo ${#array[3]}
echo ${#array[@]}

