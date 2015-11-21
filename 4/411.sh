#!/bin/bash
# File name as an argument

if [ "$#" != 1 ]
then
	echo "There are too small number of arguments"
	echo "Excecute: $0 file_name"
	exit 1
fi

if [ -e "$1" ]
then
	echo "File exist"
else
	echo "File don't exist"
fi

