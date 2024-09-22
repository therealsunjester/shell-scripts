#!/usr/bin/env bash
#666

if [ -z "$1" ]; then
	echo "Must supply a YouTube URL"
	exit
fi

echo -e "ytdl options active:\n\t[#] Downloading whole playlists\n\t[#] Don't stop for warnings\n\t[#] show progress\n\t[#] save subtitles to file\n\t[#] Save audio as MP3\n\t[#] Don't check for other file formats\n"

yt-dlp $1 --yes-playlist --restrict-filenames -w --no-warnings --progress --no-check-formats --write-subs -x --audio-format mp3