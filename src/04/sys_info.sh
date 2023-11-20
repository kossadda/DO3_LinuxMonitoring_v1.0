#!/bin/bash

source ./../02/variables.sh
source ./valid_config.sh

echo -e "${column1}HOSTNAME${close} = ${column2}$hostname${close}"
echo -e "${column1}TIMEZONE${close} = ${column2}$timezone${close}"
echo -e "${column1}USER${close} = ${column2}$user${close}"
echo -e "${column1}OS${close} = ${column2}$os $os_version${close}"
echo -e "${column1}DATE${close} = ${column2}$date${close}"
echo -e "${column1}UPTIME${close} = ${column2}$uptime${close}"
echo -e "${column1}UPTIME_SEC${close} = ${column2}$uptime_sec${close}"
echo -e "${column1}IP${close} = ${column2}$ip${close}"
echo -e "${column1}MASK${close} = ${column2}$mask${close}"
echo -e "${column1}GATEWAY${close} = ${column2}$gateway${close}"
echo -e "${column1}RAM_TOTAL${close} = ${column2}$ram_total GB${close}"
echo -e "${column1}RAM_USED${close} = ${column2}$ram_used GB${close}"
echo -e "${column1}RAM_FREE${close} = ${column2}$ram_free GB${close}"
echo -e "${column1}SPACE_ROOT${close} = ${column2}$space_root MB${close}"
echo -e "${column1}SPACE_ROOT_USED${close} = ${column2}$space_root_used MB${close}"
echo -e "${column1}SPACE_ROOT_FREE${close} = ${column2}$space_root_free MB${close}"
