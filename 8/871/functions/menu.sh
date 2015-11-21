function menu {
	local file="ans$$"
	
	dialog --title "Menu" \
	       --menu "Please chose your option" \
	       16 50 10 \
	       1 "Kernel name" \
	       2 "Kernel version" \
               3 "Uptime" \
	       4 "Current directory" \
	       5 "LS current directory" \
	       6 "Chose file to remove" \
	       7 "Chose file to edit" \
               8 "End program" \
	       9 "End timing" 2>$file
	
	local result=$?
	
	if [ "$result" = "0" ]
	then
		local choice=`cat $file`
		rm -f $file
	else
		rm -f $file
		confirm_quit
	fi
	
	case $choice in:
		1) show_kernelname ;;
		2) show_kernelversion ;;
		3) show_uptime ;;
		4) show_pwd ;;
		5) show_ls ;;
		6) delete_file ;;
	        7) edit_file ;;
		8) confirm_quit ;;
		9) quit_time ;;
	esac
}
