gksudo 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 886DDD89'
sudo add-apt-repository "deb http://deb.torproject.org/torproject.org $(lsb_release -s -c) main"
sudo apt-get update
sudo apt-get -y --allow-unauthenticated install tor-geoipdb polipo
sudo cp /etc/polipo/config /etc/polipo/config.bak
sudo wget -O /etc/polipo/config http://gitweb.torproject.org/torbrowser.git/blob_plain/HEAD:/build-scripts/config/polipo.conf
sudo service polipo restart
#adding transmission torrent client
sudo add-apt-repository ppa:transmissionbt/ppa
sudo apt-get -y update
sudo apt-get -y install transmission-cli transmission-common transmission-daemon
