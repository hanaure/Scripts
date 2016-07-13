#!/bin/bash

# NVIDIA Proprietary Driver
# Debian Jessie
 
# Add repository jessie-backports
echo "# jessie-backports" >> /etc/apt/sources.list 
echo "deb http://httpredir.debian.org/debian jessie-backports main contrib non-free" >> /etc/apt/sources.list 

# Update repository
apt-get update

# Install Linux-headers
apt-get install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,')

# Install nvdia-driver from jessie-backports
apt-get install -t jessie-backports nvidia-driver

# Add nouveau blacklist
echo "blacklist nouveau" > /etc/modprobe.d/nvidia-blacklists-nouveau.conf
echo "blacklist nouveau" > /etc/modprobe.d/blacklist.conf
