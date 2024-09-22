#!/usr/bin/env bash
#666

#if the first arg is supplied, its for the certbot python bin
#in the virtualm environment

cb_py="/opt/certbot/bin/python"

if [ "$1" ]; then
	cb_py="$1"
fi

echo "0 0,12 * * * root $cb_py -c 'import random; import time; time.sleep(random.random() * 3600)' && sudo certbot renew -q" | sudo tee -a /etc/crontab > /dev/null