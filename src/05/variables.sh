#!/bin/bash

#time_start=$(date +%s.%N)

path=$1

total_folders=$(( $(sudo ls -R $path | grep -c "./") - 1 ))
top_size_folders=$(sudo du $1 -h 2>/dev/null | sort -hr | head -5 | awk '{print "-",$2",", $1"b"}' |nl)
num_files=$(sudo find $1 -type f 2>/dev/null | wc -l)
conf=$(sudo find $1 -name "*.conf" | wc -l)
text=$(sudo find $1 -name "*.txt"  2> /dev/null | wc -l)
execute=$(sudo find $1 -type f -executable  2> /dev/null | wc -l)
log=$(sudo find $1 -name "*.log"  2> /dev/null | wc -l)
archive=$(sudo find $1 -name '*.tar' -o -name '*.zip' -o -name '*.7z' -o -name '*.rar' -o -name '*.gz'  2> /dev/null | wc -l)
symbolic=$(sudo find $1 -type l  2> /dev/null | wc -l)
top_size_files=$(sudo find $1 -type f -exec du -h {} + 2>/dev/null | sort -rh | head -n 10 | while read -r size path; do echo "- $path, $size, $(file -b --mime-type "$path" | cut -d'/' -f2)"; done | nl)
top_size_execute=$(sudo find $1 -type f -executable -exec du -h {} + 2>/dev/null | sort -rh | head -n 10 | while read -r size path; do echo "- $path, $size, $(md5sum "$path" | cut -d' ' -f1)"; done | nl)
