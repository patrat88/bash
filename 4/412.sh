#!/bin/bash
# Copying file do directory with few if statements

# Check that there are proper number of arguments
if [ "$#" -gt 2 ]
then
	echo "Too many number of arguments"
	echo "Execute: $0 file_name [directory_name]"
	exit 1
fi

# Check that $1 argument exist
if [ "$#" = "0" ]
then
	echo "You didn't give file name"
	echo "Execute: $0 file_name [directory_name]"
	exit 1
fi

# Check that $2 argument name is longer that 0
if [ -n "$2" ]
then 
	mkdir "$2"
	cp "$1" "$2"/
else
	mkdir "default"
	cp "$1" default/
fi

# Check if return 0
if [ "$?" = "$0" ]
then
	echo "Copied"
else
	echo "Copying failed"
fi


