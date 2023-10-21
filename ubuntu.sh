#!/bin/bash
#adding google nameservers

mkdir ak
cd ak

echo 'namerserver 8.8.8.8' >> /etc/resolv.conf
echo 'namerserver 8.8.4.4' >> /etc/resolv.conf
