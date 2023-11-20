#!/bin/bash

time_start=$(date +%s.%N)

if ./valid_path.sh $@; then
	./sys_info.sh $@
	echo "• Script execution time (in seconds) = $(echo "$(date +%s.%N) $time_start" | awk '{printf "%.3f", $1 - $2}')"
else
	./valid_messages.sh $@
fi
