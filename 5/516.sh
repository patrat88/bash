#!/bin/bash
# Change size of characters in file

ext=$1
for filename `ls *.txt
do
	tmp=`basename $filename $ext`
	newname='echo $tmp | tr '[a-z]' '[A-Z']
	mv $filename $newname $ext
done
