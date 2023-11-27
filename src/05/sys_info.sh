#!/bin/bash

source ./variables.sh $@

echo "• Total number of folders (including all nested ones) = $total_folders"
echo "• TOP 5 folders of maximum size arranged in descending order (path and size): 
$top_size_folders"
echo "• Total number of files = $num_files"
echo "• Number of: 
    1  - Configuration files (with the .conf extension) = $conf 
    2  - Text files = $text 
    3  - Executable files = $execute 
    4  - Log files (with the extension .log) = $log 
    5  - Archive files = $archive 
    6  - Symbolic links = $symbolic" 
echo "• TOP 10 files of maximum size arranged in descending order (path, size and type):
$top_size_files"
echo "• TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):
$top_size_execute"
echo "• Script execution time (in seconds) = $(echo "$(date +%s.%N) $time_start" | awk '{printf "%.3f", $1 - $2}')"
