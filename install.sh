#!/usr/bin/env bash

#ensure git is installed
sudo apt-get install git -y

cd /home/pi
git clone https://github.com/loomIOT/device-manager-update.git

sudo chown -R pi:pi /home/pi/device-manager-update

