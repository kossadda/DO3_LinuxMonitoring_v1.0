#!/bin/bash

if [ $# -eq 0 ]; then
	exit 1
elif [ $# -eq 1 ]; then
	if [[ $1 != */ ]]; then
	exit 1
	elif [[ ! -d "$1" ]] && [[ $1 == */ ]]; then
	exit 1
	fi
elif [ $# -ne 1 ]; then
	exit 1
fi
