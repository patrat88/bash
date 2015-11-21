function logging {
	local g_passwd=`cat password.txt`
	local file="pass$$"
	dialog --title "Enter password" --passwordbox "Password: " 8 40 2> $file
	local result=$?
	clear

	if [ "$result" != "0" ]
	then
		rm -r $file
		exit $E_ESC
	fi

	local passwd=`cat $file`
	rm -r $file

	if [ "$passwd" = "$g_passwd" ]
	then
		return $P_OK
	else
		return $P_BAD
	fi
}

