#!/bin/bash

invalid_num=0

if [ $# -eq 0 ]; then
	echo "There are no parameters. Please enter 4 parameters"
elif [ $# -gt 0 ] && [ $# -lt 4 ]; then
	echo "Insufficient parameters. Please enter 4 parameters"
elif [ $# -gt 4 ]; then
	echo "The number of parameters is more than necessary. Please enter 4 parameters"
elif [ $1 -eq $2 ] || [ $3 -eq $4 ]; then
    echo "Paired parameters (1-2 and 3-4) must not match. Please enter your parameters again"
else
	if [ $1 -lt 1 ] || [ $1 -gt 6 ]; then
		invalid_num=1
	elif [ $2 -lt 1 ] || [ $2 -gt 6 ]; then
		invalid_num=1
    elif [ $3 -lt 1 ] || [ $3 -gt 6 ]; then
        invalid_num=1
    elif [ $4 -lt 1 ] || [ $4 -gt 6 ]; then
        invalid_num=1
	fi
	if [ $invalid_num -eq 1 ]; then
		echo "The entered parameters must be in the range [1-6]"
	fi
fi