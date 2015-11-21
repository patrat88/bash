function end {
	if [ "$1" != "$P_OK" ]
	then
		dialog --msgbox "I'm really sorry $USER. \
			You entered wrong password \
			Please run script again \
			and enter correct password." 8 40
		return $P_BAD
	else
		return $P_OK
	fi
}

