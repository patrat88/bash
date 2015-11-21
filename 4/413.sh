#!/bin/bash
# Copying file do directory with few if statements
# This is modification of 412.sh
# Check that there are proper number of arguments
if [ "$#" -gt 2 ]
then
	echo "Too many number of arguments"
	echo "Execute: $0 file_name [directory_name]"
	exit 1
fi

# Check that user input agrument
if [ "$#" = "0" ]
then
	echo "You didn't give a file name"
	echo "Execute: $0 file name [directory_name]"
	exit 2
fi

# Check that file exist
if [ ! -e "$1" ]
then
	echo "This file exist"
	exit 3
fi

# Check lenght of second argument
if [ -n "$2" ]
then
	if [ ! -d "$2" ]
	then
		mkdir "$2"
	fi
	cp "$1" "$2"/
else
	if [ ! -d "defult" ]
	then
		mkdir "default"
	fi
	cp "$1" default/
fi

# Check that script returns 0
if [ "$?" = "0" ]
then
	echo "Copied"
else
	echo "Copying failed"
fi
