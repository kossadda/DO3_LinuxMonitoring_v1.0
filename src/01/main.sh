#!/bin/bash

if ./validation.sh $@; then
	echo "$1"
else
	./valid_messages.sh $@
fi