#!/usr/bin/env bash
#666

# first arg = convert the files FROM the supplied format
# second argument can only be provided if the first one is

# examples:
#	- convert all m4a files to mp3, in current directory
#		$ convert-audio.sh m4a

#	- convert all files from mp4 to mp3
#		$ convert-audio.sh mp4 mp3

from="m4a"
to="mp3"

dr
if [ ! -z "$1" ]; then
	echo "first argument not supplied, converting from m4a"
	from=$1
fi

if [ ! -z "$2" ]; then
	echo "first argument not supplied, converting to mp3"
	to=$2
fi

for f in *.$from;
do
	ffmpeg -i "$f" "${f%%}.$to";
done