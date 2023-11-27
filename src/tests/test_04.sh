#!bin/bash

echo ""
echo -e "\e[47;30mPart 4. Configuring visual output design for the system research script \e[0m"
echo ""

val=0
iteration=0

while [ $val -ne 1 ]; do
    if [ $iteration -eq 0 ]; then	
		vim 04/configuration.conf
        cd 04 && ./main.sh
    fi
    echo ""
    read -p "Would you like to repeat the script with another colors? (Y(y)/N(n) " decision
    case $decision in
        y|Y)
            vim configuration.conf
            ./main.sh
            ;;
        *)
            echo ""
            break
            ;;
    esac
    ((iteration++))
done
