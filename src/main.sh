#!/bin/bash

if [ "$#" -eq 0 ]; then
	echo "There are no parameters. Please enter one parameter"
elif [ "$#" -ne 1 ]; then
	echo "The number of parameters is more than necessary. Please enter one parameter"
else
	param=$1
	if [[ $param =~ ^[0-9]+$ ]]; then
	       echo "Please enter a parameter of type \"string\""	
        else
	       echo "$param"
	fi
fi
