#!/bin/bash
# Dialog example - menu

file="answer.$$"

function end {
	if [ "$result" = "$1" ]
	then
		echo "You pressed $2"
		rm -f $file
		exit $3
	fi
}

dialog --menu "Chose one option" 15 30 10 \
	1 "Date" \
	2 "Hour" \
	3 "Date and hour" \
	4 "Uptine" \
	2>$file

result=$?
clear

end "1" "Cancel or No" "1"
end "255" "ESC" "2"

answer=`cat $file`

case $anwer in
	"1") echo `date +%D` ;;
	"2") echo `date +%R` ;;
	"3") echo `date` ;;
	"4") echo `uptime` ;;
esac
#rm -r $file
