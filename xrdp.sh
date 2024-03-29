l#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
clear='\033[0m'

sudo apt install figlet -y
clear

figlet XFCE,XRDP

sleep 2

echo -e "${yellow}Written and configured by Ahmet Kirmizioglu (kirmizioglu.net) for public use!${clear}"
echo -e "${yellow}All old GUI packages, if any, will be removed and reinstalled, okay?${clear}"
echo -e "---------------------------------------------------------------------------"
echo -e "${cyan}Press return to continue - Otherwise press CTRL+C to cancel the script${clear}"
sleep 2
read input1

sudo apt purge hwe* -y
sudo apt purge xorg* -y
sudo apt purge xserver-xorg-core -y
sudo apt purge xrdp* -y
sudo apt purge mate* -y
sudo apt purge xfce4* -y
sudo apt purge xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils -y
sudo apt purge mate-core mate-desktop-environment mate-notification-daemon -y
sudo rm /etc/systemd/system/xrdp.service
sudo apt autoremove -y
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install xorg -y
sudo apt-get install xserver-xorg-core -y
sudo apt-get install xorgxrdp -y
sudo apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils -y
sudo apt install xrdp -y
#sudo systemctl status xrdp
sudo systemctl restart xrdp
sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n xfce-session \n' /etc/xrdp/startwm.sh
sudo ufw allow from any to any port 3389 proto tcp

if service --status-all | grep xrdp
  then  echo -e "${green}XRDP services available!. Installation completed...${clear}"
        echo -e "${green}Server must be restarted, okay?${clear}!"
        rm xrdp.sh
        read input1
        shutdown -r now
  else 
  echo -e "${red}XRDP service not running. Restart service manually or reboot...${clear}"
fi
exit 0
