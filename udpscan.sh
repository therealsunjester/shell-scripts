#!/usr/bin/env bash
#666

if [ -z "$1" ]
then
	echo "Supply a target (IP | Hostname)"
	exit 0
fi

for port in {1..65535}; do
	exec 5<>/dev/tcp/$1/$port
	timeout 1 echo -e "GET / HTTP/1.1\r\nHost:$1\r\nConnection:close\r\n\r\n" >&5 2>&1
	cat <&5
done
