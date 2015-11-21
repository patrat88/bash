#!/bin/bash
# Dialog final example
. functions/headers.sh

logging
answer=$?

end $answer
answer=$?
clear

if [ "$answer" != "$P_OK" ]
then
	exit $E_BADPASSWD
else
	welcome
	menu
fi

