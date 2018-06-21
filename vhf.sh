#!/bin/bash
sudo mount -o remount,rw /
#Install Required Software
wget https://github.com/BD7KLE/MDO-FW/raw/master/VHF2018-6-21.hex
# DV-Mega Mods
sudo systemctl stop mmdvmhost.timer
sudo systemctl stop mmdvmhost.service
sudo stm32flash -v -w VHF2018-6-21.hex -g 0x0 -R -i 23,-22,22:-23,22 /dev/ttyAMA0 
sudo systemctl start mmdvmhost.timer
sudo systemctl restart mmdvmhost.service
sudo rm VHF2018-6-21.hex
sudo rm up.sh
sudo mount -o remount,ro /
