#!/usr/bin/env python
"USAGE: %s <server> <word> <port>"
from socket import *    # import *, but we'll avoid name conflict
from sys import argv, exit
if len(argv) != 4:
    print __doc__ % argv[0]
    exit(0)
sock = socket(AF_INET, SOCK_DGRAM)
messout = argv[2]
sock.sendto(messout, (argv[1], int(argv[3])))
messin, server = sock.recvfrom(255)
if messin != messout:
    print "Failed to receive identical message"
print "Received:", messin
sock.close()
