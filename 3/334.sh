# !/bin/bash
# Some differences during printing variables

digits="1     2    3   4  5 	6

7
8"

echo $digits
echo "$digits"

echo $(digits)
echo "$digits"
