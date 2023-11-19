#!/bin/bash

if ./validation.sh $@; then
	./sys_info.sh $@
else
	./valid_messages.sh $@
fi