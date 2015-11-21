# !/bin/bash
# Different types of variable

function fun1
{
echo "Hi"
}

# Read only variable
declare -r var1=10
echo $var1
var1=100
echo $var1

# Integer variable
declare -i v1=5
declare -i v2=4
declare -i sum
sum=v1+v2
echo $sum

# Array variable
declare -a tab=(1 3 4)
echp ${tab[0]} ${tab[1]} ${tab[2]}

# Function 
declare -f fun1
