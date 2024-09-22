#!/usr/bin/env bash
#666

#
## UBUNTU
##
sudo apt -f -y install build-essential automake autoconf libtool pkg-config \
	intltool libcurl4-openssl-dev libglib2.0-dev libevent-dev libminiupnpc-dev \
	libgtk-3-dev libappindicator3-dev libssl-dev

git clone --recurse-submodules https://github.com/transmission/transmission Transmission
cd Transmission

# https://github.com/transmission/transmission/blob/main/docs/Building-Transmission.md#building-transmission-from-git-first-time
# Use -DCMAKE_BUILD_TYPE=RelWithDebInfo to build optimized binary with debug information. (preferred)
# Use -DCMAKE_BUILD_TYPE=Release to build full optimized binary.

cmake -B build -DCMAKE_BUILD_TYPE=RelWithDebInfo
cd build
cmake --build .
sudo cmake --install .