function quit_time {
	dialog --yesno "Are you sure to quit?" 6 30
	local result=$?
	
	if [ "$result" = "255" ] || [ "$result" = "1" ]
	then
		menu
	fi
	
	dialog --title "Program is going to end work" \
	       --pause "Program is going to end work" 10 35 10
	clear
	exit $Z_OK
}

