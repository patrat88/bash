function delete_file {
	local file="remFile$$"
	dialog --title "Chose file to delete" \
	       --fselect ~ 20 60 2>$file
	local result=$?
	
	if [ "$result" = "255" ] || [ "$result" = "1"]
	then
		rm -f $file
		menu
	else
		local file_to_remove='cat $file'
		rm -f $file
		rm -f "$file_to_remove"
		menu
	fi
}
