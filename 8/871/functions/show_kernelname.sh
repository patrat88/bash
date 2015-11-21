function show_kernelname {
	dialog --title "Kernel name" \
	       --msgbox "`uname -s`" 5 20
	menu
}
