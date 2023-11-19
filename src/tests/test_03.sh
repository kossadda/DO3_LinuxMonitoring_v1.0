#!/bin/bash

echo ""
echo -e "\e[47;30mPart 3. Visual output design for the system research script\e[0m"
echo ""

val=0
itteration=0

while [ $val -ne 1 ]; do
	if [ $itteration -eq 0 ]; then
		read -p "Enter 4 parameters: " comand
                cd 03 && eval "bash main.sh ${comand}"
	fi
	read -p "Would you like to repeat the script? (Y(y)/N(n) " decision
	case $decision in
	  y|Y)
		read -p "Enter 4 parameters: " comand
		eval "bash main.sh ${comand}"
		;;
	  *)
		echo ""
		break
		;;
	esac
	((itteration++))
done
