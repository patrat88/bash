#!/bin/bash
# Dialog example - input name and print on std output

. function.sh

nameFile="/tmp/input.$$"
dialog --title "Your name" --inputbox "Enter your name" 8 50 2> $nameFile

dialogReturn=$?

clear

case $dialogReturn in
	"0") printName ;;
	"1") cancel ;;
	"2") esc ;;
esac
