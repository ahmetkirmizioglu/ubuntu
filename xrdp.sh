sudo apt purge hwe* -y
sudo apt purge xorg* -y
sudo apt purge xserver-xorg-core -y
sudo apt purge xrdp* -y
sudo apt purge mate* -y
sudo apt purge xfce4* -y
sudo apt purge xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils -y
sudo apt purge mate-core mate-desktop-environment mate-notification-daemon -y
sudo rm /etc/systemd/system/xrdp.service
sudo apt autoremove
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install xorg -y
sudo apt-get install xserver-xorg-core -y
sudo apt-get install xorgxrdp -y
sudo apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils -y
sudo apt install xrdp -y
sudo systemctl status xrdp
sudo systemctl restart xrdp
sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n xfce-session \n' /etc/xrdp/startwm.sh
reboot
