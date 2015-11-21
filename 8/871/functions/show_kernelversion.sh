function show_kernelversion {
	dialog --title "Kernel version" \
	       --msgbox echo "`uname -r`" 5 30
	menu
}

