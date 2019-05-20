#!/bin/sh
#getting duckduckgo links
#sunjester / https://underwurld.club/
if [ -z $1 ];
then
	echo "please give a duck dork"
	exit
fi

echo "searching duckduckgo.."
curl -sLk -H 'User-Agent: Mozilla/5.0 (X11; CrOS x86_64 11895.95.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.125 Safari/537.36' \
	-H 'Host: duckduckgo.com' \
	-H 'Referer: https://duckduckgo.com/' \
	'https://duckduckgo.com/html/?q='$1'&t=h_&ia=web&s=999' >src

echo "gathering links.."
grep -Eo "(http|https)://[a-zA-Z0-9./?=_-]*" src >links

#echo "removing duplicates.."
cat links |sort|uniq >links2

echo "cleaning up directory"
rm src links
mv links2 urls

echo "done!"
