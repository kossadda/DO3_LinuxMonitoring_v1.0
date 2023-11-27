#!/bin/bash

echo ""
echo -e "\e[47;30mPart 3. Visual output design for the system research script\e[0m"
echo ""

val=0
iteration=0

while [ $val -ne 1 ]; do
	if [ $iteration -eq 0 ]; then
		echo -e "Color Tips: \e[37m1\e[0m, \e[31m2\e[0m, \e[32m3\e[0m, \e[34m4\e[0m, \e[35m5\e[0m, \e[30;47m6\e[0m"
		read -p "Enter 4 parameters: " comand
		cd 03 && eval "bash main.sh ${comand}"
	fi
	read -p "Would you like to repeat the script? (Y(y)/N(n) " decision
	case $decision in
		y|Y)
			echo -e "Color Tips: \e[37m1\e[0m, \e[31m2\e[0m, \e[32m3\e[0m, \e[34m4\e[0m, \e[35m5\e[0m, \e[30;47m6\e[0m"
			read -p "Enter 4 parameters: " comand
			eval "bash main.sh ${comand}"
			;;
		*)
			echo ""
			break
			;;
	esac
	((iteration++))
done
