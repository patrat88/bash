#!/bin/bash
# Creating 10000 files

mkdir test_files
for i in `seq -w 1 10000`
do 
	touch "test_files/file$i.txt"
done
