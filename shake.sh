#!/usr/bin/env bash
#666

if [ -z "$1" ]; then
	echo "provide an essid"
	exit
fi

if [ -z "$2" ]; then
	echo "argument 2 is missing: number of connection attempts"
	exit
fi

airmon-ng check kill
airmon-ng start wlan0

$iface="wlan0mon"
essid=$1
tries=$2

service network-manager restart

for i in $(seq 1 $tries); do
	r=$((RANDOM%100))
	echo -n "\n$r"
	nmcli d set $iface
	nmcli d wifi connect "$essid" password "$r"
done
