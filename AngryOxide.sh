#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install cargo hcxdumptool hcxtools -y
cd ~/Downloads
git clone https://github.com/Ragnt/AngryOxide.git
cd AngryOxide
chmod +x install
sudo make
sudo cargo fix --bin "angryoxide"
sudo make install
