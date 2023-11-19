#!/bin/bash

if [ $# -eq 1 ]; then
        param=$1
        if [[ $param =~ ^[0-9]+$ ]]; then
                echo "Please enter a parameter of type \"string\""
        fi
elif [ $# -eq 0 ]; then
        echo "There are no parameters. Please enter one parameter"
else
        echo "The number of parameters is more than necessary. Please enter one parameter"
fi