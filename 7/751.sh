#!/bin/bash
# Using own file descriptors
# File descriptor is connected with filename
# To assign file to file descriptor use exec 

file1="file1.txt"
file2="file2.txt"
file3="file3.txt"

# Assign file to fd
exec 3> $file1
exec 4< $file2
exec 5<> $file3

echo "This content will be saved in $file1" >&3
read result <&4
echo "This will be saved in $file3" >&5

# Close fd using
exec 5>&- 

exec 5< $file3
read fromfile3 <&5

echo $result
echo $fromfile3
