function edit_file {
	local file="editFile$$"
	
	dialog --title "Chose file to edit" \
	       --fselect ~20 60 2>$file
	local result=$?
	
	if [ "$result" = "255"] || [ $result" = "1" ]
	then
		rm -r $file
		menu
	else
		local file_to_edit=`cat $file`
		rm -f $file
	fi
	
	local content="$content$$"
	dialog --title "Edit file: $file_to_edit" \
	       --editbox "$file_to_edit" 20 60 2>$content
	result=$?
	
	if [ "$result" = "0" ]
	then
		cp -f "$content" "$file_to_edit"
		rm -f "$content"
		menu
	else
		rm -f "$content"
		menu
	fi
}	
