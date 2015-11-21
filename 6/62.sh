#!/bin/bash
# Passing arguments to the function 

function newFunction {
# There is a need to use special variables $1, $2... $n 
	firstArg=$1
	secondArg=$2
	
	echo "$firstArg"
	echo "$secondArg"
	
}

# Calling the function with arguments
newFunction "First string" "Second string"


