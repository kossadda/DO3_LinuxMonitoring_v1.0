#!/bin/bash

echo ""
echo "Part 2. System research"
echo ""
cd 02 && ./main.sh

echo ""
echo "Checking for the presence of the created file..."
if [ "$(ls -1 *.status 2>/dev/null)" ]; then
	ls *.status
	echo ""
	read -p "Would you like to view the contents of the file? (Y(y)/N(n)) " view
	case $view in
	  y|Y)
		cat $(ls *.status)
		;;
	esac	
else
	echo "The data file was not created"
fi
echo ""
