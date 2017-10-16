#!/bin/bash

#Install Required Software
git clone https://github.com/candrist/mmdvm-image.git /home/pi/Scripts

# DV-Mega Mods
sudo systemctl stop mmdvmhost.service
sudo mount -o remount,rw /
stm32flash -v -w UHF.hex -g 0x0 -R -i 23,-22,22:-23,22 /dev/ttyAMA0 
sudo mount -o remount,ro /
sudo systemctl restart mmdvmhost.service

