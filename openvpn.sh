sudo stop shill
sudo start shill BLACKLISTED_DEVICES=tun0
sudo openvpn --config chromebook.ovpn --dev tun0
