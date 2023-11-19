#!/bin/bash

./sys_info.sh

echo ""
read -p "Would you like to save the data in a text file? (Y(y)/N(n)) " decision

case $decision in
  y|Y)
	echo "The data was saved in a .status file in the current directory"
	./recording.sh
	;;
  *)
	echo "Saving data canceled"
	;;
esac
