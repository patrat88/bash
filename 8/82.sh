#!/bin/bash
# Modified example 81.sh

dialog --title "Windows title" --ascii-lines\
       --backtitle "Title in background"\
       --checklist "List of fruits" 15 30 5\
       1 Orange off\
       2 Apple off\
       3 Melon off\
       4 Coconut off\
       5 Peach off\
       6 Pinnaple off\
       7 Banana off\
