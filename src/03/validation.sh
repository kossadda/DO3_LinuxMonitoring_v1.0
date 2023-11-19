#!/bin/bash

invalid_num=0

if [ $# -eq 0 ]; then
	exit 1
elif [ $# -gt 0 ] && [ $# -lt 4 ]; then
	exit 1
elif [ $# -gt 4 ]; then
	exit 1
elif [ $1 -eq $2 ] || [ $3 -eq $4 ]; then
	exit 1
elif [ $# -eq 4 ]; then
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
		exit 1
	fi
fi