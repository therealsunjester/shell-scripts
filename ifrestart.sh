#!/usr/bin/env bash
#666

netman=$(systemctl show NetworkManager|tee|grep -i description|cut -d'=' -f2)

if [ -z "$netman" ];
then
	echo "NetworkManager not installed?"
	exit 1
fi

#restart network manager
echo "Restarting NetworkManager"
systemctl restart NetworkManager
