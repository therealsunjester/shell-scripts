#!/bin/bash
#9405503699300009197748
clear

if [ -z $1 ];
then
	echo "please provide a tracking number"
	exit
fi

echo "checking package: $1"

stdbuf -oL curl -s -L -H 'Referer: https://www.usps.com/' \
	-H 'User-Agent: Mozilla/5.0 (X11; CrOS x86_64 11895.95.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.125 Safari/537.36' \
	'https://tools.usps.com/go/TrackConfirmAction?tLabels='$1 >src

if grep -qoEi "not yet in system" src
then
	echo "not shipped yet - $(date)"
	exit
fi

if grep -qoEi "pre-shipment" src
then
        echo "waiting for pickup - $(date)"
	exit
fi

echo "package not found"
exit
