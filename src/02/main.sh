#!/bin/bash

echo "HOSTNAME = $(hostname)"
echo "TIMEZONE = $(timedatectl | grep -E "zone:" | awk '{sub(/^.*zone: /, ""); print $0}' | sed 's/^[ \t]*//')"
echo "USER = $USER"
echo "OS = "$(grep -E '^NAME=' /etc/os-release | awk -F= '{gsub(/"/, "", $2); print $2}') $(grep -E '^VERSION=' /etc/os-release | awk -F= '{gsub(/"/, "", $2); print $2}')""
echo "DATE = "$(date "+%d %b %Y %H:%M:%S")
echo "UPTIME = $(uptime -p | grep -o "[0-9]\+ hours, [0-9]\+ minutes")"
echo "UPTIME = $(cat /proc/uptime | awk '{print $1,"seconds"}')"


