#!/bin/bash

#Install Required Software
git clone https://github.com/BD7KLE/MDO-FW/raw/master/UHF%203.0.hex /tmp

# DV-Mega Mods
sudo systemctl stop mmdvmhost.service
sudo mount -o remount,rw /
stm32flash -v -w /tmp/UHF%203.0.hex -g 0x0 -R -i 23,-22,22:-23,22 /dev/ttyAMA0 
sudo mount -o remount,ro /
sudo systemctl restart mmdvmhost.service

