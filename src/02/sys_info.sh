#!/bin/bash

hostname=$(hostname)
timezone=$(timedatectl | awk '/Time zone/{for (i=3; i<=NF; i++) printf "%s ", $i; print ""}')
user=$USER
os=$(grep -E '^NAME=' /etc/os-release | awk -F= '{gsub(/"/, "", $2); print $2}')
os_version=$(grep -E '^VERSION=' /etc/os-release | awk -F= '{gsub(/"/, "", $2); print $2}')
date=$(date "+%d %b %Y %H:%M:%S")
uptime=$(uptime -p | grep -o "[0-9]\+ hours, [0-9]\+ minutes")
uptime_sec=$(cat /proc/uptime | awk '{print $1,"seconds"}')
ip=$(hostname -I)
mask=$(ifconfig | grep -E "inet $ip" | awk '{print $2, $3, $4}')
gateway=$(ip route | grep -E "via" | awk '{print $3}')
ram_total=$(free --bytes | awk '/Mem/{printf "%.3f", $2 / 1000000000}')
ram_used=$(free --bytes | awk '/Mem/{printf "%.3f", $3 / 1000000000}')
ram_free=$(free --bytes | awk '/Mem/{printf "%.3f", $4 / 1000000000}')
space_root=$(df -BK / | awk 'NR==2 {printf "%.2f", $2 / 1000}')
space_root_used=$(df -BK / | awk 'NR==2 {printf "%.2f", $3 / 1000}')
space_root_free=$(df -BK / | awk 'NR==2 {printf "%.2f", $4 / 1000}')


echo "HOSTNAME = $hostname"
echo "TIMEZONE = $timezone"
echo "USER = $user"
echo "OS = $os $os_version"
echo "DATE = $date"
echo "UPTIME = $uptime"
echo "UPTIME_SEC = $uptime_sec"
echo "IP = $ip"
echo "MASK = $mask"
echo "GATEWAY = $gateway"
echo "RAM_TOTAL = $ram_total GB"
echo "RAM_USED = $ram_used GB"
echo "RAM_FREE = $ram_free GB"
echo "SPACE_ROOT = $space_root MB"
echo "SPACE_ROOT_USED = $space_root_used MB"
echo "SPACE_ROOT_FREE = $space_root_free MB"


