#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
clear='\033[0m'

clear
echo -e "${green}Written and configured by Ahmet Kirmizioglu (kirmizioglu.net) for public use${clear}!"
echo -e "${green}1-Google public DNS / 8.8.8.8 and 8.8.4.4 will be added${clear}!"
echo -e "${green}2-Ubuntu GUI and XRDP will be installed for Ubuntu Server${clear}!"
echo -e "${green}3-Port 3386 will be opened${clear}!"
echo -e "---------------------------------------------------------------------------"
echo -e "${magenta}Did you read what was written above, okay?${clear}!"
echo -e "${magenta}Press return to continue - Otherwise press CTRL+C to cancel the script${clear}!"
sleep 1
read input1

echo "Step 1"
echo "Creating a temporary folder..(ak)"
#mkdir ak
#cd ak

#sleep 1

#echo 'nameserver 8.8.8.8' >> /etc/resolv.conf
#echo 'nameserver 8.8.4.4' >> /etc/resolv.conf
#sudo systemctl restart systemd-resolved.service

#sleep 1
echo ":)"

