#!/usr/bin/env bash
#666
if [ -z "$1" ]; then
	echo "please supply an ESSID"
	exit
fi

if [ -z "$2" ]; then
	echo "Please supply the interface (ex; mon0)
fi

essid="$1"
iface="$2"

timeout 20 airodump-ng --essid "$essid" $iface>dump
head -n5 dump
