function show_uptime {
	dialog --title "Uptime" \
	       --msgbox "`uptime | awk'{print $3}' | sed/,//g`" \
	       5 30
	menu
