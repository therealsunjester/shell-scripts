#!/usr/bin/env bash
#666
#setup a new apache virtualhost

if [ -z "$1" ]
then
	echo "You must supply a name"
	exit 1
fi

#www dir
wwwdir=/var/www

#user's name
username=$1

#user path
userpath=$wwwdir/$username

if [ ! -d "$userpath" ]
then
	mkdir $userpath
	echo "user www directory created: $userpath"
else
	echo "$username directory already exists"
fi

echo "Setup for $username completed"