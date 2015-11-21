#!/bin/bash
# Select "loop" example

while [ TRUE ]
do
	echo "Menu"
	select option in "Date" "File list" "Uptime" "File size" "End"
	do
		case $option in
			"Date") date ;;
			"File list") ls ;;
			"Uptime") uptime ;;
			"File size") du -sh * ;;
			"End") exit ;;
			*) echo "Bad option"
		esac
		break
	done
	echo -n "\n"
done

