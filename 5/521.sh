#!/bin/bash
# While loop example
# Using while loop to count how long are the elements in array

array=(1 3 9 "Example_string" Example String)
elem_num=${#array[@]}

i=0
while [ $i -lt $elem_num ] ;
do
	chars[$i]="Element $i is: ${#array[$i]} long." 
	i=$[i+1]
done
echo -n ${chars[@]}

