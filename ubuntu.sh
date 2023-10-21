#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'

clear
echo "${RED}Written and configured by Ahmet Kirmizioglu (kirmizioglu.net) for public use${NC}"
echo "1-Google public DNS / 8.8.8.8 and 8.8.4.4 will be added"
echo "2-Ubuntu GUI and XRDP will be installed for Ubuntu Server"
echo "3-Port 3386 will be opened"
echo "---------------------------------------------------------------------------"
echo "Did you read what was written above, okay?"
echo "Press return to continue - Otherwise press CTRL+C to cancel the script"
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

