#!/bin/bash
# Elif example

arg_num="$#"

if [ $arg_num = "0" ]
then
	echo "You didn't give argument"
elif [ $arg_num = "1" ]
then
	echo "You give 1 argument: $1"
elif [ $arg_num = "2" ]
then
	echo "You give 2 arguments: $1 $2"
elif [ $arg_num = "3" ]
then
	echo "You give 3 arguments: $1 $2 $3"
else
	echo "You give more than 3 arguments"
fi

