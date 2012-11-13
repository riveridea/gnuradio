#!/usr/bin/env python
#
# Copyright 2010,2011 Free Software Foundation, Inc.
# 
# This file is part of GNU Radio
# 
# GNU Radio is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
# 
# GNU Radio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with GNU Radio; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
# 

from gnuradio import gr, gru, uhd
from gnuradio import eng_notation
from gnuradio.eng_option import eng_option
from optparse import OptionParser

# From gr-digital
from gnuradio import digital

# from current dir
from receive_path import receive_path
from uhd_interface import uhd_receiver

import struct
import sys
import threading
import time

# socket 
import socket

#import os
#print os.getpid()
#raw_input('Attach and press enter: ')

ds = 32

MTU = 4096

CLUSTER_HEAD    = 'head'   # cluster head
CLUSTER_NODE    = 'node'   # cluster node

HEAD_PORT = 23000   # port where cluster head capturing the socket message
NODE_PORT = 23001   # port where cluster node capturing the socket message

class socket_server(threading.Thread):
    def __init__(self, port, parent):
        threading.Thread.__init__(self)
	self._socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
	self._socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
	self._socket.bind(('', port))
	self._parent = parent
          
    def run(self):
        while 1:
	    msg, (addr, port) = self._socket.recvfrom(MTU)
	    payload = msg
	    cmds = []
	    l = len(payload)
	    pos2 = 0
	    pos1 = payload.find(':', 0, len(payload))
	    
	    print pos1 
	    print '\n'
	    print payload
	    while(pos1 != -1):
	        cmds.append(payload[pos2:pos1])
	        pos2 = pos1 + 1
	        pos1 = payload.find(':', pos2, len(payload))
			if pos1 == -1:
			    cmds.append(payload[pos2:len(payload)])
	    
	    print cmds
	    if(len(cmds) == 0):
	       continue
	       
	    if(cmds[0] == 'cmd'):
	        if(cmds[1] == 'start' and len(cmds) == 5):
	            (start_time, ) = struct.unpack('!d', cmd[2])
	            (burst_duration, ) = struct.unpack('!d', cmd[3])
	            (idle_duration, ) = struct.unpack('!d', cmd[4])
	            
	            print start_time
	            print '\n'
	            print burst_duration
	            print '\n'
	            print idle_duration
	            print '\n'
	        else:
	            print 'protocol error'
			
class socket_client(object):
    def __init__(self, dest_addr, dest_port, parent):
	    self._parent = parent
	    self._dest_addr = dest_addr
	    self._dest_port = dest_port
	    self._socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
	    self._socket.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
		
    def set_dest(self, dest_addr, dest_port):
	    self._dest_addr = dest_addr
	    self._dest_port = dest_port

class socket_ctrl_channel(object):
	def __init__(self, head_or_node):
	    if (head_or_node == CLUSTER_HEAD): # head
	       self._sock_server = socket_server(HEAD_PORT, self)
	       self._sock_client = socket_client('', NODE_PORT, self)
	    else:  # node
	       self._sock_server = socket_server(NODE_PORT, self)
	       self._sock_client = socket_client('', HEAD_PORT, self)

class my_top_block(gr.top_block):        
    def start_streaming(self):

	if self._node_type == CLUSTER_HEAD:
	    self._socket_ctrl_chan._sock_client._socket.sendto("message from cluster head\n", ('<broadcast>', NODE_PORT))
	    hostname = socket.gethostname()
	    start_time = struct.pack('!d', self.source.u.get_time_now().get_real_secs() + 1)
	    burst_duration = struct.pack('!d', 0.008)
	    idle_duration = struct.pack('!d', 0.032)
	    payload = 'cmd' + ':' + 'start' + ':' + start_time + ':' + burst_duration + ':' + idle_duration 
	    print hostname
	    self._socket_ctrl_chan._sock_client._socket.sendto(hostname, ('<broadcast>', NODE_PORT))
	    self._socket_ctrl_chan._sock_client._socket.sendto(payload, ('<broadcast>', NODE_PORT))
	else:
	    self.source.u.start()
            print '\n start streaming'
        
    def __init__(self, node_type, node_index, demodulator, rx_callback, options):
        gr.top_block.__init__(self)
		
        # is this node the sub node or head?
        self._node_type = node_type
        self._node_id   = node_index	

	# install the socket control channel
	self._socket_ctrl_chan = socket_ctrl_channel(self._node_type)
	# start the socket server to capture the control messages
	self._socket_ctrl_chan._sock_server.start()

        if(options.rx_freq is not None):
            # Work-around to get the modulation's bits_per_symbol
            args = demodulator.extract_kwargs_from_options(options)
            symbol_rate = options.bitrate / demodulator(**args).bits_per_symbol()
            ask_sample_rate = symbol_rate*options.samples_per_symbol

            self.source = uhd_receiver(options.args, symbol_rate,
                                       options.samples_per_symbol,
                                       options.rx_freq, options.rx_gain,
                                       options.spec, options.antenna,
                                       options.verbose)
            options.samples_per_symbol = self.source._sps
                       
            self.source.u.set_center_freq(uhd.tune_request(options.rx_freq, ask_sample_rate*2), 0)
            print 'In locking '
            while (self.source.u.get_sensor("lo_locked").to_bool() == False):
                print '.'
        
            print 'Locked'

        elif(options.from_file is not None):
            sys.stderr.write(("Reading samples from '%s'.\n\n" % (options.from_file)))
            self.source = gr.file_source(gr.sizeof_gr_complex, options.from_file)
        else:
            sys.stderr.write("No source defined, pulling samples from null source.\n\n")
            self.source = gr.null_source(gr.sizeof_gr_complex)

        self.timer = threading.Timer(1, self.start_streaming)



# /////////////////////////////////////////////////////////////////////////////
#                                   main
# /////////////////////////////////////////////////////////////////////////////

global n_rcvd, n_right

def main():
    global n_rcvd, n_right

    n_rcvd = 0
    n_right = 0

    node_types = {}
    node_types["head"] = "head"
    node_types["node"] = "node"	
 
    def rx_callback(ok, payload):
        global n_rcvd, n_right
        (pktno,) = struct.unpack('!H', payload[0:2])
        n_rcvd += 1
        if ok:
            n_right += 1

        print "ok = %5s  pktno = %4d  n_rcvd = %4d  n_right = %4d" % (
            ok, pktno, n_rcvd, n_right)

    demods = digital.modulation_utils.type_1_demods()

    # Create Options Parser:
    parser = OptionParser (option_class=eng_option, conflict_handler="resolve")
    expert_grp = parser.add_option_group("Expert")

    parser.add_option("-m", "--modulation", type="choice", choices=demods.keys(), 
                      default='psk',
                      help="Select modulation from: %s [default=%%default]"
                            % (', '.join(demods.keys()),))
    parser.add_option("","--from-file", default=None,
                      help="input file of samples to demod")

    parser.add_option("", "--node-type", type="choice", choices=node_types.keys(),
                          default="node",
                          help="Select node type from: %s [default=%%default]"
                                % (', '.join(node_types.keys()),))
    parser.add_option("-i", "--node-index", type="intx", default=0, 
                          help="Specify the node index in the cluster [default=%default]")					  
					  
    receive_path.add_options(parser, expert_grp)
    uhd_receiver.add_options(parser)

    for mod in demods.values():
        mod.add_options(expert_grp)

    (options, args) = parser.parse_args ()

    if len(args) != 0:
        parser.print_help(sys.stderr)
        sys.exit(1)

    if options.from_file is None:
        if options.rx_freq is None:
            sys.stderr.write("You must specify -f FREQ or --freq FREQ\n")
            parser.print_help(sys.stderr)
            sys.exit(1)


    # build the graph
    tb = my_top_block(node_types[options.node_type],
                     options.node_index,
		     demods[options.modulation], 
		     rx_callback, options)

    r = gr.enable_realtime_scheduling()
    if r != gr.RT_OK:
        print "Warning: Failed to enable realtime scheduling."

    tb.source.u.set_start_on_demand()
    
    tb.start()        # start flow graph
    #self.source.u.stop()
    #time.sleep(10)
    tb.timer.start()
    #tb.source.u.start()
    
    tb.wait()         # wait for it to finish

if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        pass
