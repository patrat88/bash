#!/bin/bash
# Redirecting stdout and errors to file

file="filethatnotexist.txt"
#touch file
ls -l $file &> errors_output.txt



