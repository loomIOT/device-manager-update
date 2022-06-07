#!/usr/bin/env bash

#ensure git is installed
sudo apt-get install git -y

cd /home/pi
echo "removing last update..."
rm -Rf device-manager-update

echo "cloning new version..."
git clone https://github.com/loomIOT/device-manager-update.git

echo "changing owner..."
sudo chown -R pi:pi /home/pi/device-manager-update

echo "copy new sensors..."
cp -R /home/pi/device-manager-update/sensors /home/pi/multiplexer/sensors

echo "restarting multiplexer"
sudo systemctl restart multiplexer

echo "cleaning up"
rm -Rf device-manager-update
