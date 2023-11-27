#!/bin/bash

source ./colors.sh

default1_back=0
default1_font=0
default2_back=0
default2_font=0

if [ $column1_back_config -ge 1 ] && [ $column1_back_config -le 6 ]; then
	valid1_back=$column1_background
else
	valid1_back=$back_white
	default1_back=1
fi

if [ $column1_font_config -ge 1 ] && [ $column1_font_config -le 6 ]; then
    valid1_font=$column1_font_color
else
    valid1_font=$text_purple
    default1_font=1
fi

if [ $column2_back_config -ge 1 ] && [ $column2_back_config -le 6 ]; then
    valid2_back=$column2_background
else
    valid2_back=$back_green
    default2_back=1
fi

if [ $column2_font_config -ge 1 ] && [ $column2_font_config -le 6 ]; then
    valid2_font=$column2_font_color
else
    valid2_font=$text_red
    default2_font=1
fi

column1="\e[${valid1_back};${valid1_font}m"
column2="\e[${valid2_back};${valid2_font}m"
close="\e[0m"
