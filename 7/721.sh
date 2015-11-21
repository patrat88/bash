#!/bin/bash
# Error redirecting to file

file="wrongfilethatnotexist.txt"
touch $file
ls -l $ file 2> errors.txt

# 2> operator redirect errors to file. When file is not empty it content will
# be erased. If user want to keep tracking errors should use 2>> instead 2>
# New content will be added to existing file
