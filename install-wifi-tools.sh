#!/usr/bin/env bash
#666
apt -f -y install build-essential libpcap-dev

#pixie
git clone https://github.com/wiire/pixiewps
# or wget https://github.com/wiire/pixiewps/archive/master.zip && unzip master.zip
cd pixiewps*/
make
sudo make install
cd ~/home/$USER/Downloads/666

#bully requires pixie to be installed first
#git clone https://github.com/aanarchyy/bully

