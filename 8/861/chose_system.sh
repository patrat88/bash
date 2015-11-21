function system {
	if [ "$linux" = "1" ]
	then
		echo "You chose system: GNU/Linux"
	fi

	if [ "$bsd" = "1" ]
	then
		echo "You chose system: BSD"
	fi

	if [ "$mac" = "1" ]
	then
		echo "You chose system : MAC OS X"
	fi
	
	if [ "$win" = "1" ]
	then
		echo "You chose system : MS WINDOWS"
	fi
	
	if [ "$linux" = "0" ] && [ "$bsd" = "0" ] && \
	[ "$mac" = "0" ] && [ "$win" = "0" ] && \
	[ "$result" = "0" ]
	then
		echo "You didn't chose system"
	fi
}

