#!/bin/bash
# Use return in function isn't good choice in bash

function multiply {
	arg=$1
	result=$[arg*arg]
	return $result
}

multiply $1
returnedValue=$?

# This will work properly for values from 0 do 16
# For 16 and more values will be completly different from exceptced
# That's why "return" returns error codes in range(255) and after that
# counter is reset to 0. Proper solution in 64.sh

echo $returnedValue
