#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
clear='\033[0m'

clear

file="ubuntu.sh"

if [ -f "$file" ] ; then
    rm "$file"
    mv "$file".1 "$file"
fi

echo -e "${yellow}Written and configured by Ahmet Kirmizioglu (kirmizioglu.net) for public use${clear}!"
echo -e "${yellow}1-Google public DNS / 8.8.8.8 and 8.8.4.4 will be added${clear}!"
echo -e "${yellow}2-Ubuntu GUI and XRDP will be installed for Ubuntu Server${clear}!"
echo -e "${yellow}3-Port 3386 will be opened${clear}!"
echo -e "---------------------------------------------------------------------------"
echo -e "${cyan}Did you read what was written above, okay?${clear}!"
echo -e "${cyan}Press return to continue - Otherwise press CTRL+C to cancel the script${clear}!"
sleep 1
read input1

echo -e "${yellow}Step 1${clear}!"

echo "Adding nameservers..."
echo 'nameserver 8.8.8.8' >> /etc/resolv.conf
echo 'nameserver 8.8.4.4' >> /etc/resolv.conf
#sudo systemctl restart systemd-resolved.service
echo "-Ok"

sleep 1

echo -e "${yellow}Step 2${clear}!"
sudo apt update
sudo apt upgrade
sudo apt install slim
sudo apt install lightdm
sudo apt install ubuntu-desktop
sudo service slim start
sudo apt install vanilla-gnome-desktop vanilla-gnome-default-settings
echo "-Ok"

sleep 2

echo -e "${yellow}Step 2${clear}!"
echo "XRDP installation started..."
sudo apt install xrdp
sudo systemctl enable --now xrdp

sleep 2

echo -e "${yellow}Step 3${clear}!"
echo "3389 Port is opening..."
sudo ufw allow from any to any port 3389 proto tcp
echo "-Ok"

sleep 2

if service --status-all | grep xrdp
  then  echo -e "${green}XRDP services available!. Installation completed...${clear}!"
else 
  echo -e "${red}XRDP service not running. Restart service manually or reboot...${clear}!"
fi
exit 0
