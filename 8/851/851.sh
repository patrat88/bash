#!/bin/bash
# Dialog example - form and checklist
. function.sh
. global.sh

form
result=$?
clear

end $result
data

if [ $result = "0" ]
then
	print_info
fi

rm -r $FILE
exit 0
