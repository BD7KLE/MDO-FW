#!/bin/bash

#Install Required Software
wget https://github.com/BD7KLE/MDO-FW/raw/master/UHF-3.0.hex

# DV-Mega Mods
sudo systemctl stop mmdvmhost.service
sudo mount -o remount,rw /
sudo stm32flash -v -w UHF-3.0.hex -g 0x0 -R -i 23,-22,22:-23,22 /dev/ttyAMA0 
sudo mount -o remount,ro /
sudo systemctl restart mmdvmhost.service



