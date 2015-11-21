#!/bin/bash
# Return value from function - correct method

function multiply {
	arg=$1
	result=$[arg*arg]
	echo $result
}

correctResult=$(multiply $1)

echo "$correctResult"
