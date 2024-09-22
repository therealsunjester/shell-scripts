#!/usr/bin/env bash
#666

if [ -z "$1" ];
then
	echo "Provide a proxy and port (IP:port)"
	exit 0
fi

cmd="curl -A \"Test1/1.0\" -vX $1 http://api.ipify.org/"

#if you supply a second argument of "1" then it will use https, otherwise it will use http
if [ "$2" == "1" ];
then
	cmd="curl -A \"Test1/1.0\" -vsX $1 https://api.ipify.org/"
fi

echo $($cmd)
