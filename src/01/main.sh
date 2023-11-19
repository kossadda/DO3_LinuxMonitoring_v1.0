#!/bin/bash

if [ "$#" -ne 1 ]; then
	./validation.sh
else
	param=$1
	if [[ $param =~ ^[0-9]+$ ]]; then
	       echo "Please enter a parameter of type \"string\""	
        else
	       echo "$param"
	fi
fi
