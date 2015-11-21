function confirm_quit {
	dialog --yesno "Are you sure to end program?" 6 30
	local result=$?
	if [ "$result" = "0" ]
	then
		clear
		exit $Z_OK
	else
		menu
	fi
}
