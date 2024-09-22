#!/usr/bin/env bash
#666

prevdir=$(pwd)

if [ ! -d "~/.666/proj" ];
then
	mkdir ~/.666/proj 2&>1 >/dev/null
fi

#move into the 666 proj folder
cd ~/.666/proj

#get blocks
#sudo adb pull /storage/emulated/0/.sketchware/resources/block/ .

#get sketchware folder
sudo adb pull /storage/emulated/0/.sketchware .

#move back
cd $prevdir
