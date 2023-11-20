#!bin/bash

echo ""
echo -e "\e[47;30mPart 4. Configuring visual output design for the system research script \e[0m"
echo ""

val=0
itteration=0

while [ $val -ne 1 ]; do
        if [ $itteration -eq 0 ]; then	
		vim 04/configuration.cfg
                cd 04 && ./main.sh
        fi
	echo ""
        read -p "Would you like to repeat the script with another colors? (Y(y)/N(n) " decision
        case $decision in
          y|Y)
                vim configuration.cfg
                ./main.sh
                ;;
          *)
                echo ""
                break
                ;;
        esac
        ((itteration++))
done