#!/usr/bin/env bash
#666
for ip in $(seq 1 254); do
  ping -c 1 -W 1 192.168.0.$ip &> /dev/null && echo "192.168.0.$ip is up"
done
netstat -an | grep 'ESTABLISHED\|LISTEN'

