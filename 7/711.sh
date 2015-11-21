#!/bin/bash
# Output redirecting to file

file1="file1.txt"
echo "This string will be saved in file $file1" > $file1
# It is possible to use 1> instead of >. If file exist it actual content is 
# erased and new one is saved. It's possible to add new content using >> 

file2="file2.txt"
echo "This string will be saved in file $file2" >> $file2

echo "Printing files"
cat $file1
cat $file2

echo "Changing files and print again"
echo "New string in $file1" > $file1
echo "New string in $file1" >> $file2
cat $file1
cat $file2


