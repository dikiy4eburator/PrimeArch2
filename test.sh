#!/bin/bash

# Variabels
HDDLIST=""
HDDNAME=test

# read devices
HDDLIST=$(lsblk -o NAME,SIZE,MODEL,TYPE | grep disk)
clear

echo "==========================================================================="
echo -e "selekt harddrive for the installation\n"

awk '{print NR": "$0}' <<< $HDDLIST
#awk '{print NR}' <<< $HDDLIST
echo -e "\n\n"

read -rsn1 HDDNR

HDDNAME=$(awk -v x="$HDDNR" 'NR == x''{print $1}' <<< $HDDLIST)















#while read line
#do
	#echo "$i $line"
#done <<< $HDDLIST
#



#if [ "$input" = "3" ]; then
   #HDDNAME=
#fi 



#echo -e "\n\n\n\n\n"
