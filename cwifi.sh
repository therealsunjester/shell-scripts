#!/usr/bin/env bash
#666

#crack any handshakes in the logs dir.
#options enabled:
#	-writes key to file 'keys'
#	-shows the key in ascii
#	-skips broken keystreams
#	-searches only alphanumeric

aircrack-ng -sDc -l 666/logs/keys out-*
