#!/bin/bash

filename=$(date +"%d_%m_%y_%H_%M_%S").status

./sys_info.sh > $filename
