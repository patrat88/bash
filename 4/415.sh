#!/bin/bash
# Bool operators
# ! - negation
# || - OR
# && - AND

number=10
if [ "$number=10" -ge "0"] && "$number" -le "10" ]
then
	echo "$number is from range <0;10>"
else
	echo "$number is not from range <0;10>"
fi

if [ "$number" -lt "10" ] || [ "$number" -gt "20" ]
then
	echo "$number is not from range <10;20>"
else
	echo "$number is from range <10;20>"
fi
