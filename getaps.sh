#!/usr/bin/env bash
#666

#added nic detection with getnic (first interface is pulled)
#added error handling for iwlist

iwlist=$(which iwlist)
if [ ! $iwlist ]
then
	echo "iwlist is required"
	exit 1
fi

if [ ! -f "scripts/getnic.sh" ]
then
	echo "getnic is required (scripts/getnic.sh)"
	exit 1
fi

iface=$(./scripts/getnic.sh)
if [ ! "$iwlist" ]
then
	echo "iwlist is required."
fi

iwlist $iface scanning |grep -i essid|sed -rn 's/^\s+//p'|sed 's/\"\"/\"unknown\"/p'|cut -d':' -f2|sed 's/\"//g'
