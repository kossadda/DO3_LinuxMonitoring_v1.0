#!/bin/bash

source ./colors.sh
source ./../02/variables.sh

echo -e "${name}HOSTNAME${close} = ${value}$hostname${close}"
echo -e "${name}TIMEZONE${close} = ${value}$timezone${close}"
echo -e "${name}USER${close} = ${value}$user${close}"
echo -e "${name}OS${close} = ${value}$os $os_version${close}"
echo -e "${name}DATE${close} = ${value}$date${close}"
echo -e "${name}UPTIME${close} = ${value}$uptime${close}"
echo -e "${name}UPTIME_SEC${close} = ${value}$uptime_sec${close}"
echo -e "${name}IP${close} = ${value}$ip${close}"
echo -e "${name}MASK${close} = ${value}$mask${close}"
echo -e "${name}GATEWAY${close} = ${value}$gateway${close}"
echo -e "${name}RAM_TOTAL${close} = ${value}$ram_total GB${close}"
echo -e "${name}RAM_USED${close} = ${value}$ram_used GB${close}"
echo -e "${name}RAM_FREE${close} = ${value}$ram_free GB${close}"
echo -e "${name}SPACE_ROOT${close} = ${value}$space_root MB${close}"
echo -e "${name}SPACE_ROOT_USED${close} = ${value}$space_root_used MB${close}"
echo -e "${name}SPACE_ROOT_FREE${close} = ${value}$space_root_free MB${close}"
