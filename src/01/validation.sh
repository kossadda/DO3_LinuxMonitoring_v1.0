#!/bin/bash

if [ $# -eq 1 ]; then
        param=$1
        if [[ $param =~ ^[0-9]+$ ]]; then
                exit 1
        fi
elif [ $# -eq 0 ]; then
        exit 1
else
        exit 1
fi
