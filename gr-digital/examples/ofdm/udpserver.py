#!/usr/bin/env python
"USAGE: %s <port>"
from SocketServer import DatagramRequestHandler, UDPServer
from sys import argv

class SlaveHandler(DatagramRequestHandler):
    def handle(self):
        print "Client connected:", self.client_address
        message = self.rfile.read()

	if message == "start_node2":
            self.wfile.write("node2 done")
            print "reply to control"

if len(argv) != 2:
    print __doc__ % argv[0]
else:
    UDPServer(('',int(argv[1])), SlaveHandler).serve_forever()
