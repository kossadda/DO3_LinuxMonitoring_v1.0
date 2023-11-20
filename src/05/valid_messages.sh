#!/bin/bash

if [ $# -eq 0 ]; then
        echo "Path not specified. Please enter one directory"
elif [ $# -eq 1 ]; then
        if [[ $1 != */ ]]; then
                echo "An absolute or relative path must end with a \"/\""
        elif [[ ! -d "$1" ]] && [[ $1 == */ ]]; then
                echo "This directory does not exist"
        fi
elif [ $# -ne 1 ]; then
	echo "Multiple paths indicated. Please enter one directory"
fi
