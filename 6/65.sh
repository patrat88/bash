#!/bin/bash
# Global and local variables

g_var1="Global string1"
g_var2="Global string2"

function func {
	str1="Str1"
	local str2="Str2"
	echo "str1"
	echo "str2"
	echo "$g_var1"
	echo "$g_var2"
}

func
echo "$str1"
echo "$str2"

