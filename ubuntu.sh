#!/bin/bash
#adding Google public DNS

mkdir ak
cd ak

echo 'nameserver 8.8.8.8' >> /etc/resolv.conf
echo 'nameserver 8.8.4.4' >> /etc/resolv.conf
sudo systemctl restart systemd-resolved.service
