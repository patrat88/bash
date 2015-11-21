#!/bin/bash
# Read example

# Read example with echo
echo -n "Please type something "
read $input
echo "$input"

# Read example without echo (-p arg)
read -p "Please type something " input
echo $input

# Reading elements of array
read -p "Please input few arrays element " -a array
echo ${array[@]}

# Reading without typing variable name, use special $REPLY variable
read -p "Please type something "
echo "$REPLY"
