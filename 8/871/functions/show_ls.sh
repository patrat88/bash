function show_ls {
	local file="dir$$"
	dialog --title "Chose directory" \
	       --dselect ~10 30 2>$file
	local result=$?
	
	if ["$result" = "255" ] || [ "$result" = "1" ]
	then
		rm -f $file
		menu
	else
		local fileName=`cat $file`
		rm -f $file
	fi
	
	dialog --title "Directory content: $fileName" \
	       --msgbox "`ls -l $fileName`" 20 70
	menu
}

