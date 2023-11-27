#!bin/bash

echo ""
echo -e "\e[47;30mPart 5. File system research\e[0m"
echo ""

val=0
iteration=0

while [ $val -ne 1 ]; do
    if [ $iteration -eq 0 ]; then
        echo -e "Enter an absolute or relative path (the directory must end with a \"/\")"
        read path
        cd 05 && eval "bash main.sh ${path}"
    fi
	echo ""
    read -p "Would you like to repeat the script? (Y(y)/N(n) " decision
    case $decision in
        y|Y)
            echo -e "Enter an absolute or relative path (the directory must end with a \"/\")"
            read path
            eval "bash main.sh ${path}"
            ;;
        *)
            echo ""
            break
            ;;
    esac
    ((iteration++))
done
