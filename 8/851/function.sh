function form {
	dialog --form "Notification" 25 60 20 "Name" 1 1 "" 1 20 30 30 \
	"Surname" 2 1 "" 2 20 30 30 \
	"Birth date" 3 1 "" 3 20 30 2 \
	"Month of birth" 4 1 "" 4 20 30 2 \
	"Year of birth" 5 1 "" 5 20 30 4 \
	"Eye color" 6 1 "" 6 20 30 30 \
	"Hair color" 7 1 "" 7 20 30 30 \
	2>$FILE
}

function data {
allData=`cat $FILE`

for i in `seq 1 $[ROW_COUNT]`
do 
	detailedData[$[i-1]]=`echo $allData | awk "{print $"$i"}"`
	i=$[i+1]
done
}

function end {
	case $1 in
		"255") rm -f $FILE; exit 1 ;;
		"1") rm -r $FILE; exit 2 ;;
	esac
}

function print_info {
	echo "Name: ${detailedData[0]}"
	echo "Surname: ${detailedData[1]}"
	echo "Date birth: ${detailedData[2]}"
	echo "Month of birth: ${detailedData[3]}"
	echo "Year of birth: ${detailedData[4]}"
	echo "Eye color: ${detailedData[5]}"
	echo "Hair color: ${detailedData[6]}"
}

