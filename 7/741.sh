#!/bin/bash
# Redirecting to std input

file=filename.txt

# Create file and add there some content
touch $file

echo "Some content" >> $file
echo "More content" >> $file

# Reading from file
read answer < $file
echo $answer


