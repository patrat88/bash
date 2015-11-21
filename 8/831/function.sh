function printName {
	name=`cat $nameFile`
	echo "Your name is: $name"
	rm -r $nameFile
}

function cancel {
	echo "Pressed No or Cancel"
	rm -r $nameFile
	exit 1
}

function esc {
	echo "Pressed esc"
	rm -r $nameFile
	exit 2
}

