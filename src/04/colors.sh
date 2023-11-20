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

column1_back_config=$(grep column1_background configuration.conf | awk -F= '{print $2}')
column1_font_config=$(grep column1_font_color configuration.conf | awk -F= '{print $2}')
column2_back_config=$(grep column2_background configuration.conf | awk -F= '{print $2}')
column2_font_config=$(grep column2_font_color configuration.conf | awk -F= '{print $2}')

case $column1_back_config in
1) column1_background=$back_white;;
2) column1_background=$back_red;;
3) column1_background=$back_green;;
4) column1_background=$back_blue;;
5) column1_background=$back_purple;;
6) column1_background=$back_black;;
esac

case $column1_font_config in
1) column1_font_color=$text_white;;
2) column1_font_color=$text_red;;
3) column1_font_color=$text_green;;
4) column1_font_color=$text_blue;;
5) column1_font_color=$text_purple;;
6) column1_font_color=$text_black;;
esac

case $column2_back_config in
1) column2_background=$back_white;;
2) column2_background=$back_red;;
3) column2_background=$back_green;;
4) column2_background=$back_blue;;
5) column2_background=$back_purple;;
6) column2_background=$back_black;;
esac

case $column2_font_config in
1) column2_font_color=$text_white;;
2) column2_font_color=$text_red;;
3) column2_font_color=$text_green;;
4) column2_font_color=$text_blue;;
5) column2_font_color=$text_purple;;
6) column2_font_color=$text_black;;
esac
