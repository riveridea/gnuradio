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
from transmit_path import transmit_path
#from uhd_interface import uhd_receiver
from uhd_interface_w_sensor import uhd_transmitter
from uhd_interface_w_sensor import uhd_sensor

import struct
import sys
import threading
import time
from ctypes import *

# socket 
import socket

#import os
#print os.getpid()
#raw_input('Attach and press enter: ')

DEBUG = 0

ds = 32

NETWORK_SIZE = 32  # the number of all the USRPs

MTU = 4096

BURST_LEN = 0.008  #burst duration = 8ms
NODES_PC  = 2

CLUSTER_HEAD    = 'head'   # cluster head
CLUSTER_NODE    = 'node'   # cluster node

HEAD_PORT = 23000   # port where cluster head capturing the socket message
NODE_PORT = 23001   # port where cluster node capturing the socket message

# thread for getting transmitted data from file or orther source
class tx_data_src(threading.Thread):
    def __init__(self, tx_path):
        threading.Thread.__init__(self)
        self._txpath = tx_path
        
    def run(self):
        #generate and send packets
        n = 0
        pktno = 0
        #pkt_size = int(options.size)
        print "tx_data_src -%s start tx" %(self.getName())
        while 1:
            data = (50 - 2) * chr(pktno & 0xff)
            payload = struct.pack('!H', pktno & 0xffff) + data
            self._txpath.send_pkt(payload, False)
            n += len(payload)
            #sys.stderr.write('.')
            pktno += 1

# Socket Control Channel 
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
            
            current_time = self._parent._owner.sensors[0].u.get_time_now().get_real_secs()
            print "msg received at time of %.7f" %current_time
            print msg
            
            payload = msg
            cmds = []
            l = len(payload)
            pos2 = 0
            pos1 = payload.find(':', 0, len(payload))
	    
            while(pos1 != -1):
                cmds.append(payload[pos2:pos1])
                pos2 = pos1 + 1
                pos1 = payload.find(':', pos2, len(payload))

                if(pos1 == -1):
                    cmds.append(payload[pos2:len(payload)])	    
	    
            if(len(cmds) == 0):
                continue
	       
            if(cmds[0] == 'cmd'):    
                if(cmds[1] == 'start' and len(cmds) == 5):
                        (start_time, ) = struct.unpack('!d', cmds[2])
                        (burst_duration, ) = struct.unpack('!d', cmds[3])
                        (idle_duration, ) = struct.unpack('!d', cmds[4])
			# handle the start command
                        self._parent._owner.start_tdma_net(start_time, burst_duration, idle_duration)
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
	def __init__(self, head_or_node, owner):
	    self._owner = owner #
	    if (head_or_node == CLUSTER_HEAD): # head
	       self._sock_server = socket_server(HEAD_PORT, self)
	       self._sock_client = socket_client('', NODE_PORT, self)
	    else:  # node
	       self._sock_server = socket_server(NODE_PORT, self)
	       self._sock_client = socket_client('', HEAD_PORT, self)
		   
class my_top_block(gr.top_block):        
    def start_streaming(self):
        if self._node_type == CLUSTER_HEAD:
            #self._socket_ctrl_chan._sock_client._socket.sendto("message from cluster head\n", ('<broadcast>', NODE_PORT))
            hostname = socket.gethostname()
            current_time = self.sensors[0].u.get_time_now().get_real_secs()
            print "cluster head current time %.7f" %current_time
            start_time = struct.pack('!d', current_time + 10)        
            burst_duration = struct.pack('!d', BURST_LEN)
            t_slot = 0.010  # tdma slot length
            idle_duration = struct.pack('!d', t_slot*(NETWORK_SIZE - 1) + t_slot - BURST_LEN)
            payload = 'cmd' + ':' + 'start' + ':' + start_time + ':' + burst_duration + ':' + idle_duration 
            #print hostname
            #self._socket_ctrl_chan._sock_client._socket.sendto(hostname, ('<broadcast>', NODE_PORT))
            self._socket_ctrl_chan._sock_client._socket.sendto(payload, ('<broadcast>', NODE_PORT))
        else:  # CLUSTER_NODE will be responsible for tdma transmitting and receiving
            if DEBUG == 1:
                stime = self.sensors[0].u.get_time_now().get_real_secs()
                #for i in range(NODES_PC):                      
                self.sensors[0].u.set_start_time(uhd.time_spec_t(stime + 2))
                self.start()
                time.sleep(5)
                self.sensors[0].u.start()
        
    def __init__(self, node_type, node_index, demodulator, modulator, rx_callback, options):
        gr.top_block.__init__(self)
		
        # is this node the sub node or head?
        self._node_type = node_type
        self._node_id   = node_index	

        # install the socket control channel
        self._socket_ctrl_chan = socket_ctrl_channel(self._node_type, self)
        # start the socket server to capture the control messages
        self._socket_ctrl_chan._sock_server.start()

        if(options.sx_freq is not None):
            # Work-around to get the modulation's bits_per_symbol
            args = demodulator.extract_kwargs_from_options(options)
            symbol_rate = options.bitrate / demodulator(**args).bits_per_symbol()
            if (options.sx_samprate is None):
                ask_sample_rate = symbol_rate*options.samples_per_symbol
            else:
                ask_sample_rate = options.sx_samprate
			
            self._rx_freq = options.sx_freq
            self._tx_freq = options.sx_freq # use the same frequence 
            self._sample_rate = ask_sample_rate

            # configuration the usrp sensors and transmitters
            # Automatically USRP devices discovery
            devices = uhd.find_devices_raw()
            n_devices = len(devices)
            addrs = []
        
            if (n_devices == 0):
                sys.exit("no connected devices")
            elif (n_devices >= 1):
                for i in range(n_devices):
                        addr_t = devices[i].to_string()  #ex. 'type=usrp2,addr=192.168.10.109,name=,serial=E6R14U3UP'
                        addrs.append(addr_t[11:30]) # suppose the addr is 192.168.10.xxx
                        addrs[i]
                
            if (n_devices == 1 and self._node_type == CLUSTER_NODE):
                sys.exit("only one devices for the node, we need both communicator and sensor for cluster node")
            elif (n_devices > 1 and self._node_type == CLUSTER_HEAD):
                sys.exit("only one devices is need for cluster head")

            # Configure Sensors, with all GPS sync
            self.sensors = []
            for i in range(n_devices):
                self.sensors.append(uhd_sensor(addrs[i], ask_sample_rate,
                                                options.sx_freq, options.sx_gain,
                                                options.sx_spec, options.sx_antenna, 
                                                options.verbose))
                self.sensors[i].u.set_start_on_demand()  # the sensor will start sensing on demand												
                if self.sensors[i].u.get_time_source(0) == "none":
                    self.sensors[i].u.set_time_source("mimo", 0)  # Set the time source without GPS to MIMO cable
                    self.sensors[i].u.set_clock_source("mimo",0) 
					
	        	# file sinks
                filename = "%s_sensed.dat" %(NODES_PC*self._node_id + i)
                self.connect(self.sensors[i].u, gr.file_sink(gr.sizeof_gr_complex, filename))

            # Configure Transmitters	
            self.transmitters = []
            self.txpaths = []
            self.tx_srcs = []
            for i in range(n_devices):	
                self.transmitters.append(uhd_transmitter(addrs[i], symbol_rate,
                                                options.samples_per_symbol,
                                                options.tx_samprate,
                                                options.tx_freq, options.tx_gain,
                                                options.tx_spec, options.tx_antenna,
                                                options.verbose, True))	#TDMA transmitter
                self.txpaths.append(transmit_path(modulator, options))
                self.tx_srcs.append(tx_data_src(self.txpaths[i]))
                #filename = "file%.dat" %(i)
                #self.file_src = gr.file_source(gr.sizeof_gr_complex*1, filename, True)      
                #self.source.u.set_center_freq(uhd.tune_request(options.rx_freq, ask_sample_rate*2), 0)
                #print 'In locking '
                #while (self.source.u.get_sensor("lo_locked").to_bool() == False):
                #    print '.'
        
                 #print 'Locked'

        self.timer =  threading.Timer(1, self.start_streaming)
	
    def start_tdma_net(self, start_time, burst_duration, idle_duration):
        # specify the tdma pulse parameters and connect the 
        # pulse source to usrp sinker also specify the usrp source
        # with the specified start time
        self.pulse_srcs = []
        n_devices = len(self.transmitters)
        if (n_devices > 0):
            time_slot = (burst_duration + idle_duration)/NETWORK_SIZE
            #print 'base_s_time = %.7f' %start_time
            for i in range(n_devices):
                s_time = uhd.time_spec_t(start_time + time_slot*(NODES_PC*self._node_id + i))
                #print 'specified_time = %.7f' %s_time.get_real_secs()
                local_time = self.transmitters[i].u.get_time_now().get_real_secs()
                print 'current time 1 = %.7f' %local_time
                self.pulse_srcs.append(uhd.pulse_source(s_time.get_full_secs(), 
		                                        s_time.get_frac_secs(), 
					                self._sample_rate,
					                idle_duration,
					                burst_duration,
                                                        1))
		# Connect the pulse source to the transmitters
                self.transmitters[i].insert_tdma_throttle(self.pulse_srcs[i])
                self.connect(self.txpaths[i], self.transmitters[i])
		# Set the start time for sensors                
		self.sensors[i].u.set_start_time(uhd.time_spec_t(start_time))
        else:
            exit("no devices on this node!")
			
        # start the flow graph and all the sensors
        self.start()
        time.sleep(5)
        for i in range(n_devices):
            current_time = self.sensors[i].u.get_time_now().get_real_secs()
            print "current time 2 = %.7f" %current_time
            #print "base_s_time = %.7f" %start_time
            self.sensors[i].u.start()
            #start the transmitting of data packets
            self.tx_srcs[i].start()

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
    mods   = digital.modulation_utils.type_1_mods()

    # Create Options Parser:
    parser = OptionParser (option_class=eng_option, conflict_handler="resolve")
    expert_grp = parser.add_option_group("Expert")

    parser.add_option("-m", "--modulation", type="choice", choices=demods.keys(), 
                      default='psk',
                      help="Select modulation from: %s [default=%%default]"
                            % (', '.join(demods.keys()),))
    parser.add_option("-s", "--size", type="eng_float", default=100,
                      help="set packet size [default=%default]")
    parser.add_option("","--from-file", default=None,
                      help="input file of samples to demod")

    parser.add_option("", "--node-type", type="choice", choices=node_types.keys(),
                          default="node",
                          help="Select node type from: %s [default=%%default]"
                                % (', '.join(node_types.keys()),))
    parser.add_option("-i", "--node-index", type="intx", default=0, 
                          help="Specify the node index in the cluster [default=%default]")					  
					  
    receive_path.add_options(parser, expert_grp)
    transmit_path.add_options(parser, expert_grp)
    uhd_sensor.add_options(parser)
    uhd_transmitter.add_options(parser)

    for mod in demods.values():
        mod.add_options(expert_grp)

    (options, args) = parser.parse_args ()

    if len(args) != 0:
        parser.print_help(sys.stderr)
        sys.exit(1)

    if options.from_file is None:
        if (options.sx_freq is None):
            sys.stderr.write("You must specify -f FREQ or --freq FREQ\n")
            parser.print_help(sys.stderr)
            sys.exit(1)


    # build the graph
    tb = my_top_block(node_types[options.node_type],
                    options.node_index,
                    demods[options.modulation],
                    mods[options.modulation], 
		    rx_callback, options)

    r = gr.enable_realtime_scheduling()
    if r != gr.RT_OK:
        print "Warning: Failed to enable realtime scheduling."
    
    #tb.start()        # start flow graph
    #self.source.u.stop()
    #time.sleep(10)
    tb.timer.start()
    #tb.source.u.start()
    
    #tb.wait()         # wait for it to finish

if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        pass
