#!/bin/bash

source ./sys_info.sh

echo ""

if [ $default1_back -eq 1 ]; then
    echo "Column 1 background = default (white)"
else
    case $column1_back_config in
    1) echo "Column 1 background = 1 (white)";;
    2) echo "Column 1 background = 2 (red)";;
    3) echo "Column 1 background = 3 (green)";;
    4) echo "Column 1 background = 4 (blue)";;
    5) echo "Column 1 background = 5 (purple)";;
    6) echo "Column 1 background = 6 (black)";;
    esac
fi

if [ $default1_font -eq 1 ]; then
    echo "Column 1 font color = default (purple)"
else
    case $column1_font_config in
    1) echo "Column 1 font color = 1 (white)";;
    2) echo "Column 1 font color = 2 (red)";;
    3) echo "Column 1 font color = 3 (green)";;
    4) echo "Column 1 font color = 4 (blue)";;
    5) echo "Column 1 font color = 5 (purple)";;
    6) echo "Column 1 font color = 6 (black)";;
    esac
fi

if [ $default2_back -eq 1 ]; then
    echo "Column 2 background = default (green)"
else
    case $column2_back_config in
    1) echo "Column 2 background = 1 (white)";;
    2) echo "Column 2 background = 2 (red)";;
    3) echo "Column 2 background = 3 (green)";;
    4) echo "Column 2 background = 4 (blue)";;
    5) echo "Column 2 background = 5 (purple)";;
    6) echo "Column 2 background = 6 (black)";;
    esac
fi

if [ $default2_font -eq 1 ]; then
    echo "Column 2 font color = default (red)"
else
    case $column2_font_config in
    1) echo "Column 2 font color = 1 (white)";;
    2) echo "Column 2 font color = 2 (red)";;
    3) echo "Column 2 font color = 3 (green)";;
    4) echo "Column 2 font color = 4 (blue)";;
    5) echo "Column 2 font color = 5 (purple)";;
    6) echo "Column 2 font color = 6 (black)";;
    esac
fi
