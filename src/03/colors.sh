#!/bin/bash

back_white=47
text_white=37

back_red=41
text_red=31

back_green=42
text_green=32

back_blue=44
text_blue=34

back_purple=45
text_purple=35

back_black=40
text_black=30

case $1 in
1) back_clr_name=$back_white;;
2) back_clr_name=$back_red;;
3) back_clr_name=$back_green;;
4) back_clr_name=$back_blue;;
5) back_clr_name=$back_purple;;
6) back_clr_name=$back_black;;
esac

case $2 in
1) text_clr_name=$text_white;;
2) text_clr_name=$text_red;;
3) text_clr_name=$text_green;;
4) text_clr_name=$text_blue;;
5) text_clr_name=$text_purple;;
6) text_clr_name=$text_black;;
esac

case $3 in
1) back_clr_value=$back_white;;
2) back_clr_value=$back_red;;
3) back_clr_value=$back_green;;
4) back_clr_value=$back_blue;;
5) back_clr_value=$back_purple;;
6) back_clr_value=$back_black;;
esac

case $4 in
1) text_clr_value=$text_white;;
2) text_clr_value=$text_red;;
3) text_clr_value=$text_green;;
4) text_clr_value=$text_blue;;
5) text_clr_value=$text_purple;;
6) text_clr_value=$text_black;;
esac

name="\e[${back_clr_name};${text_clr_name}m"
value="\e[${back_clr_value};${text_clr_value}m"
close="\e[0m"
