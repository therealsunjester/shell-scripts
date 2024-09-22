from scapy.sendrecv import send
from scapy.layers.inet import *
from binascii import unhexlify
import sys
magic = ''
for h in sys.argv[1].split(':'): magic += unhexlify(h);
send(IP(dst="255.255.255.255")/UDP(dport=9)/Raw(load=(chr(0xff)*6 + magic*16)))