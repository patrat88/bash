#!/bin/bash
# Function examples in bash
# First method of implementation

function printValue {
	echo "Function that prints value"
	x=10
	echo $x
}

# Second method of implementation

newFunction () {
	echo "Another function that prints value"
	x=11
	echo $x
}

# Call the functions
printValue
newFunction
