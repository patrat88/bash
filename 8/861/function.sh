function dialog_checklist {
dialog --checklist "Chose operating system" 20 40 4 \
	"1" "GNU/Linux" on \
	"2" "BSD" off \
	"3" "MAC OS X" \
	"4" "MS WINDOWS" off \
	2> $FILE
}

function edit_data {
	local data=`cat $FILE`
	echo $data | sed s/\"//g > $FILE
	echo `cat $FILE`
}
