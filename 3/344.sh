# !/bin/bash
# Arithmetic operations

# First method
a=1
a=$(( a+1))
echo $a

# Second method
a=$[a+10]
echo $a

# Third method
let a=a-100
echo $a

# Division and zero division error
c=1
d=2

echo $(($c+$d))
echo $[$c/d]
result=$[d*$d+2*c-8*d]
echo $wynik
echo $(($a + 3))

