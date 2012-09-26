#!/usr/bin/env python
#
# Copyright 2005,2006,2009,2011 Free Software Foundation, Inc.
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


# ////////////////////////////////////////////////////////////////////
#
#    This code sets up up a virtual ethernet interface (typically
#    gr0), and relays packets between the interface and the GNU Radio
#    PHY+MAC
#
#    What this means in plain language, is that if you've got a couple
#    of USRPs on different machines, and if you run this code on those
#    machines, you can talk between them using normal TCP/IP
#    networking.
#
# ////////////////////////////////////////////////////////////////////

# ///////////////////////////////////////////////////////////////////
# 
# Add a USRP source to act as sensor
# This sensor is actually another USRP2, beside the one used for
# communications
#
# ///////////////////////////////////////////////////////////////////


from gnuradio import gr, digital, uhd
from gnuradio import eng_notation
from gnuradio.eng_option import eng_option
from optparse import OptionParser

# from current dir
from receive_path  import receive_path
from transmit_path import transmit_path
from uhd_interface_w_sensor import uhd_transmitter
from uhd_interface_w_sensor import uhd_receiver
from uhd_interface_w_sensor import uhd_sensor

from gnuradio import window
from gnuradio.gr import firdes
from gnuradio.wxgui import fftsink2
from grc_gnuradio import wxgui as grc_wxgui
import wx

import os, sys
import random, time, struct

# for proteced message queue
import threading
import Queue

import gnuradio.digital.packet_utils as pkt_utils

import numpy as np

#print os.getpid()
#raw_input('Attach and press enter')

# ////////////////////////////////////////////////////////////////////
#
#   Use the Universal TUN/TAP device driver to move packets to/from
#   kernel
#
#   See /usr/src/linux/Documentation/networking/tuntap.txt
#
# ////////////////////////////////////////////////////////////////////

# Linux specific...
# TUNSETIFF ifr flags from <linux/tun_if.h>

IFF_TUN		= 0x0001   # tunnel IP packets
IFF_TAP		= 0x0002   # tunnel ethernet frames
IFF_NO_PI	= 0x1000   # don't pass extra packet info
IFF_ONE_QUEUE	= 0x2000   # beats me ;)

CLUSTER_HEAD    = 'head'   # cluster head
CLUSTER_NODE    = 'node'   # cluster node

CTRL_TYPE        = 0x01   # control packet
DATA_TYPE        = 0x02   # data packet

# Control Command at Head
START_SENSE      = 0x01   # start sense
COLLECT_DATA     = 0x02   

# State machine at cluster head
HEAD_IDLE        = 0
SENSE_START      = 1
ROUND_COLLECTING  = 2
ROUND_COLLECTED    = 3

# State machine at cluster node
NODE_IDLE        = 0
SENSING          = 1
WAIT_REPORT      = 2

BCST_ADDR        = 4294967295
HEAD_ADDR        = 0

# Streaming = 0, Finite Acquisition = 1
STREAM_OR_FINITE = 0
# Streaming time
STREAM_TIME = 1800.0
def open_tun_interface(tun_device_filename):
    from fcntl import ioctl
    
    mode = IFF_TAP | IFF_NO_PI
    TUNSETIFF = 0x400454ca

    tun = os.open(tun_device_filename, os.O_RDWR)
    ifs = ioctl(tun, TUNSETIFF, struct.pack("16sH", "gr%d", mode))
    ifname = ifs[:16].strip("\x00")
    return (tun, ifname)
    

# ////////////////////////////////////////////////////////////////////
#                     the flow graph
# ////////////////////////////////////////////////////////////////////

#class my_top_block(gr.top_block):
class my_top_block(gr.top_block):

    def __init__(self, node_type, node_index, mod_class, demod_class,
                 rx_callback, options):

        gr.top_block.__init__(self)

        # is this node the sub node or head?
        self._node_type = node_type
        self._node_id   = node_index

        # Get the modulation's bits_per_symbol
        args = mod_class.extract_kwargs_from_options(options)
        symbol_rate = options.bitrate / mod_class(**args).bits_per_symbol()

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
                
        # Configure the devices to 
        # 1 Communicator
        # N Sensors (N >= 1)
        # How to determin the Communicator?
        #       we need to assure all the sensors to be sync with GPS, except the communicator
        #       thus, the device with non-sync time will be assigned as communicator
        # Firstly, instantiate all the USRP receivers (including the sensors and the communicator)
        self.sensors = []
        t = []
        dt = []
        time_src = []
        role = []
        
        for i in range(n_devices):
            self.sensors.append(uhd_sensor(addrs[i], options.sx_samprate,
                                                options.sx_freq, options.sx_gain,
                                                options.sx_spec, options.sx_antenna, 
                                                options.verbose))       
            if self.sensors[i].u.get_time_source(0) == "none":
                self.sensors[i].u.set_time_source("mimo", 0)  # Set the time source without GPS to MIMO cable
                self.sensors[i].u.set_clock_source("mimo",0)                
            time_src.append(self.sensors[i].u.get_time_source(0))

        time.sleep(4)   # time to sync between mimo connected devices
            
        for i in range(n_devices):
            t.append(self.sensors[i].u.get_time_now().get_real_secs())

            role.append("sensor")
            
            dt.append(1)
            if i > 0:
                for j in range(i):
                    if (abs(t[j] - t[i]) < 0.1): # Find a pair of GPS synched devices
                        dt[i] += 1
                        dt[j] += 1 
                        
        # Find the communicator
        found_com = 0
        print t
        print addrs
        print time_src
        print dt
        
        cind = 0
        
        for i in range(n_devices):
            if found_com == 1:
                break
                
            if self._node_type == CLUSTER_HEAD and self.sensors[0].get_time_source(0) == "gpsdo":
                cind = 0
                found_com == 1    
            elif n_devices == 2:
                if self.sensors[i].u.get_time_source(0) == "mimo" and found_com == 0:
                    cind = i
                    found_com = 1
                elif i == 1 and self.sensors[i].u.get_time_source(0) == "gpsdo" and found_com == 0:
                    cind = i
                    found_com = 1
                elif i == 1:
                    sys.exit("configure error, no communicaotr found for 2 devices")                    
      
            elif (dt[i] != n_devices - 1 and dt[i] != 1) or (sum(dt) == n_devices):
                sys.exit("configure error or Not sync")
            elif dt[i] == 1 and found_com == 0: # We select this as communicator
                cind = i
                found_com = 1
            
            if found_com == 1:
                del self.sensors[cind] # delete this devices from sensor list
                role[cind] = "com"
                self.source =  uhd_receiver(addrs[cind], symbol_rate,
                                            options.samples_per_symbol,
                                            options.rx_freq, options.rx_gain,
                                            options.rx_spec, options.rx_antenna,
                                            options.verbose)
                self.sink = uhd_transmitter(addrs[cind], symbol_rate,
                                            options.samples_per_symbol,
                                            options.tx_freq, options.tx_gain,
                                            options.rx_spec, options.rx_antenna,
                                            options.verbose)
                del addrs[cind] # Ignore the addrs of communicator                                            

        print role
        
        if found_com == 0: # no communicator found
            sys.exit("Configuration Error")

        # Setup the rest of USRPs as sensors
        if (self._node_type == CLUSTER_NODE and STREAM_OR_FINITE == 0):
            for i in range(n_devices - 1):
                filename = "%s_sensed.dat" %(addrs[i])
                self.connect(self.sensors[i].u, gr.file_sink(gr.sizeof_gr_complex, filename))
        
        options.samples_per_symbol = self.source._sps     
        
        self.txpath = transmit_path(mod_class, options)
        self.rxpath = receive_path(demod_class, rx_callback, options)
        
        self.connect(self.txpath, self.sink)
        self.connect(self.source, self.rxpath)

    def send_pkt(self, payload='', eof=False):
        return self.txpath.send_pkt(payload, eof)

    def carrier_sensed(self):
        """
        Return True if the receive path thinks there's carrier
        """
        return self.rxpath.carrier_sensed()

    def set_freq(self, target_freq):
        """
        Set the center frequency we're interested in.
        """

        self.sink.set_freq(target_freq)
        self.source.set_freq(target_freq)
    
# ////////////////////////////////////////////////////////////////////
#                           Round Robin Control State Machine
# ////////////////////////////////////////////////////////////////////
class ctrl_st_machine(object):
    """
    In the state machine, the cluster head will collaborate with the 
    cluster nodes which act as sensors to collect the sensing data
    from the radio environments, in a round robin manner

    Also, on the cluster node, the mode switching between the communcation
    and sening mode is controlled by this state machine.

    The synchonization among the cluster is performed based on the referenced
    GPS time. 
    """
    
    def __init__(self, node_type, node_id, loop_number, options):
        self.node_type = node_type
        self.node_id = node_id
        if node_type == CLUSTER_HEAD:
            #hash table used to store the sensing data for different nodes
            #indexed by the IP address of the USRP
            self.ndata = dict()  
            self.state = HEAD_IDLE
            self.loop_number = loop_number
        elif node_type == CLUSTER_NODE:
            #hash table to store the sensing data for different transaction
            #indexed by the transaction id
            self.ndata = dict()
            self.state = NODE_IDLE
            self.fd = open("sdata.dat","w")            

        self.options = options
            
        self.oq_lock = threading.Lock()
        self.output    = Queue.Queue(0)   #outgoing message queue, infinit size limit
        self.pktno     = 0    #
        self.tb = None #top block (to access the device information)  
        self.samps = ()  # store the samples for each round
        self.current_rep_id = -1 # indicating which node is reporting
        self.net_size = 2 # the number of the cluster nodes
        self.current_start_time = 0 # the start time for the current round sensing
        self.current_samp_num = 0 # the sampling number for the current round sensing
        self.current_loop = 0 # which loop are we in now
        self.rcv_no = 0 # indicate the fragmmented packet index
                 
    def set_top_block(self, tb):
        self.tb = tb
        self.sensors = tb.sensors
        if (STREAM_OR_FINITE == 0):
            for i in range(len(self.sensors)):
                self.sensors[i].u.set_start_on_demand()
        
        # firstly do the finite acqaution to set the time flag
        #time = self.sensor.u.get_time_now().get_real_secs() + 0.2
        #self.sensor.u.set_start_time(uhd.time_spec_t(time))
        #test_samps = self.sensor.u.finite_acquisition(4)
        #print 'test_samps length = ', len(test_samps)

    def stop_sensing(self):
        """
        stop the streaming from sensor
        """
        for i in range(len(self.sensors)):
            self.sensors[i].u.stop()        
        print "sensing streaming is stopped by the timer"
        
        #self.state = WAIT_REPORT
        self.state = NODE_IDLE
        sys.exit("temporarily exit by stopping sensing")
        
    def start_sensing(self, samp_num):
        # broadcast the start command to all the nodes to start
        # the first round of data collection
        # Only head can broadcast this command
        # The node with id = 0 need to report the data after this command
        print 'start_round_robin'

        if self.node_type != CLUSTER_HEAD:
            print 'Only cluster head can start the data collect'
            return 1
        
        if self.state != HEAD_IDLE and self.state != ROUND_COLLECTED:
            print 'The sensing can only be initiated when Head is idle state'
            return 1
            
        pkt_size = struct.pack('!H', 26) # (2) include the pktno(4) 
        fromaddr = struct.pack('!I', HEAD_ADDR) #(4)
        toaddr = struct.pack('!I', BCST_ADDR) #(4)       
        pkt_type = struct.pack('!B', CTRL_TYPE) #(1)
        ctrl_cmd = struct.pack('!B', START_SENSE)# (1)
        current_time = self.tb.source.u.get_time_now().get_real_secs()
        print '***************************************This round of collection initated at time ', current_time
        start_time = current_time   #0.09s is the switching time of half-duplex
        print 'start_time = %.7f' %start_time
        self.current_start_time = start_time
        start_time = struct.pack('!d', start_time) # (8)
        samp_num = struct.pack('!H', samp_num) # (2)
        
        payload = pkt_size + fromaddr + toaddr + pkt_type + ctrl_cmd + start_time + samp_num        
      
        self.output.put(payload)
        print "start_sense =", pkt_utils.string_to_hex_list(payload)
        
        self.state = SENSE_START
            
    def round_data_collect(self, tran_id, node_id): #usingthe start time as tran_id
        # broadcast the data collect command to all the node, but only the specified node report
        if self.node_type != CLUSTER_HEAD:
            print 'Only cluster head can start the data collect'
            return 1
        
        if (self.state != SENSE_START and self.state != ROUND_COLLECTING):
            print 'Round robin data collection can only be performed when SENSE_START or  ROUND_COLLECTING state'
            return 1
            
        pkt_size = struct.pack('!H', 26) # (2) include the pktno(4) 
        fromaddr = struct.pack('!I', HEAD_ADDR) # (4)
        toaddr = struct.pack('!I', BCST_ADDR) # (4)
        pkt_type = struct.pack('!B', CTRL_TYPE) # (1)
        ctrl_cmd = struct.pack('!B', COLLECT_DATA)  # (1)
        node_id = struct.pack('!H', node_id) # (2)
        tid = struct.pack('!d', tran_id) # (8)
           
        payload = pkt_size + fromaddr + toaddr + pkt_type + ctrl_cmd + node_id + tid
            
        print 'round robin collect from node ', node_id
        print "round_collect =", pkt_utils.string_to_hex_list(payload)
        self.output.put(payload)
                     
    def process_payload(self, payload, options):       
        #print 'process_pay_load'
        
        length = len(payload)
        #test code
        #if length == 12:
        #   time.sleep(0.008)
        #   self.round_data_collect(0, 1)
        
        if length <= 17:
            print 'useless payload'
            return 1              
        
        (pktno, pktsize, fromaddr, toaddr, pkttype) = struct.unpack('!IHIIB', payload[0:15])
 
        if length != pktsize:
            print 'invalid payload'
            return 1 
        ####State Machine For the Cluster Head    
        if self.node_type == "head":
            if pkttype == DATA_TYPE:
                rt = self.tb.source.u.get_time_now().get_real_secs()
                print 'recieve the data at time %.7f' %rt
                
                (node_id,) = struct.unpack('!H', payload[15:17])
                if self.state == SENSE_START:
                    if node_id == 0 and self.current_rep_id == -1:  #Got data from the 1st node
                        #print "incoming_payload =", pkt_utils.string_to_hex_list(payload)
                        
                        rt = self.defragment(payload, node_id)               
                        if rt == 0: #Need next packet from the same node
                            return 0
                        elif rt == 1: #Completed collection of all the framgmented packets
                            self.state = ROUND_COLLECTING
                        elif rt > 1 or rt < 0:  #Errors
                            # need to add code to reset all the nodes
                            self.state = HEAD_IDLE
                            return 1
                    else:
                        print 'incorrect incoming data from node ', node_id
                        # Could broadcast the reset command to reset all the nodes
                        self.state = HEAD_IDLE
                        return 1
                elif self.state == ROUND_COLLECTING:
                    if node_id == self.current_rep_id: 
                        #print "incoming_payload =", pkt_utils.string_to_hex_list(payload)
                        
                        rt = self.defragment(payload, node_id)
                        if rt == 0: #Need next packet from the same node
                            return 0
                        elif rt > 1 or rt < 0: 
                            #Need to add code for reset the nodes
                            self.state = HEAD_IDLE
                            return 1                        
                        #Completed collection of all the fragemented packets 
                        if self.current_rep_id >= self.net_size - 1:
                            print "last node has reported data"
                            finish_time = self.tb.sensor.u.get_time_now().get_real_secs()
                            print '***************************************This round of collection started at time %.7f' %(self.current_start_time - 0.09)
                            print '==============================This round collection finished at time %.7f'  %finish_time                            
                            self.state = ROUND_COLLECTED
                            self.current_rep_id = -1
                            self.current_loop += 1
                            if self.current_loop < self.loop_number:
                                print 'initiate the next round of sensing'
                                #time.sleep(0.01)
                                self.start_sensing(options.samp_num)
                                self.state = SENSE_START
                                return 0
                            else:
                                self.current_loop = 0
                                print 'Complete all rounds of sesning'
                            
                                if self.process_collected_data() == 1:
                                    print 'All round of sensing data are processed'                                   
                                    self.state = HEAD_IDLE
                                else:
                                    print 'Data error'
                    else:
                        print 'incorrect incoming data from node ', node_id
                        self.state = HEAD_IDLE
                        return 1
                else:
                     print 'Should not receive data in the current state'
                     self.state = HEAD_IDLE
                     return 1
                
                # If reach here, the state should be ROUND_COLLECTING
                if self.state == ROUND_COLLECTING:                              
                    (tran_id,) = struct.unpack('!d', payload[17:25])  # use start time as transaction ID 
                    # Collect the data from the next node
                    t = self.tb.sensor.u.get_time_now().get_real_secs()
                    print '------------------------------------------collect next node at time ',  t
                    self.current_rep_id = node_id + 1  
                    if self.current_rep_id < self.net_size:
                        time.sleep(0.009) #Maybe here the delay can be ignored as the last node don't need to receive it.                    
                        self.round_data_collect(tran_id, self.current_rep_id)
                    else: # should not reach here
                        print 'error in report node id'
                        return 1                        
        ####State machine for the CLuster Node:                   
        elif self.node_type == "node":
            rt = self.tb.sensors[0].u.get_time_now().get_real_secs()
            print 'recieve the commnad at time %.7f' %rt
            #print "incoming_command =", pkt_utils.string_to_hex_list(payload)        
            if pkttype == CTRL_TYPE:                
                (ctrl_cmd,) = struct.unpack('!B', payload[15:16])
                
                print 'pkttype == CTRL_TYPE'                               
                if self.state == NODE_IDLE:
                    print '-->NODE_IDLE'
                    if ctrl_cmd == START_SENSE:  # start sensing received
                        print 'START_SENSE received'
                        self.state = SENSING
                        print '----->SENSING'                        
                        (start_time, samp_num) = struct.unpack('!dH', payload[16:26])
                        self.current_start_time = start_time
                        print "self.current_start_time = ", pkt_utils.string_to_hex_list(payload[16:24])
                        self.current_samp_num =  samp_num
                        print 'samp_num = ', samp_num
                        print 'start_time = %.7f' %(start_time + 0.7)
                        # start the data collection as specified time
                        #sensor_time = self.sensor.u.get_time_now().get_real_secs()
                        #print 'sensor_time = %.7f' %sensor_time
                        
                        #if start_time + 0.015 - sensor_time > 0:
                        for i in range(len(self.sensors)):
                            self.sensors[i].u.set_start_time(uhd.time_spec_t(start_time+0.70))  #started later 0.070s
                        
                        # Start data collecting  
                        if (STREAM_OR_FINITE == 1): #finite acqusition
                            samp_num = int(10*options.sx_samprate)
                            current_t = self.sensor.u.get_time_now().get_real_secs()
                            print 'current time = %.7f' %current_t
                            self.samps = self.sensor.u.finite_acquisition(samp_num)
                            if len(self.samps) == 0:
                                print 'no samps captured'
                                self.state = NODE_IDLE
                                return 0                            
                        elif (STREAM_OR_FINITE == 0): #streaming data collection
                            #start streaming here
                            for i in range(len(self.sensors)):
                                self.sensors[i].u.start()
                            #start the timer
                            self.sense_timer = threading.Timer(STREAM_TIME, self.stop_sensing)
                            self.sense_timer.start()
                            
                            self.state = SENSING
                            return 0  # the data report will be done in timer expiring callback
                        

                        
                        #o_samps = np.array(np.real(self.samps[int(0.5*options.sx_samprate):]))
                        #o_samps.astype('float64').tofile(self.fd) 

                        #print 'samps len = ', len(self.samps)
                        
                        #compute the covariance matrix
                        #mat = []
                        #l_v = 64
                        #for i in range(len(self.samps) - l_v + 1):
                        #    v = []
                        #    for j in range(l_v):
                        #        v.append(abs(self.samps[i + j]))
                        #    mat.append(v)
                            
                        #matx = np.array(mat).T
                        #covmat = np.cov(matx)
                        #trace_cov = np.trace(covmat)
                        
                        #print 'trace is ', trace_cov
                        
                        if self.node_id == 0: # for node 0, just report the data to head
                            print 'begin reporting data, data per pkt = ', options.data_pkt
                            #time.sleep(0.01)  #Don't need to delay due to the sensing time plus the sensing delay there
                            #test code
                            #self.send_test_data()
                            #return 0
                            
                            if self.report_data(self.samps, self.node_id, samp_num, options.data_pkt) == 1:
                                print 'error in reporting data'
                                return 1
                            self.state = NODE_IDLE
                            print '------>NODE_IDLE'
                        else:
                            self.state = WAIT_REPORT
                            print '------>WAIT_REPORT'
                    else:
                        print 'Recieved incorrect cmd in NODE_IDLE state'
                        return 1  
                elif self.state == WAIT_REPORT:
                    print '---->WAIT_REPORT'
                    if ctrl_cmd ==  COLLECT_DATA:
                        print 'COLLECT_DATA received'
                        (node_id, ) =  struct.unpack('!H', payload[16:18])
                        if node_id == self.node_id:
                            print 'begin reporting data, data per pkt = ', options.data_pkt
                            #time.sleep(0.004) #Here we need a delay to ensure the cluster head switched to receiving
                            #test code
                            #self.send_test_data()
                            #return 0
                            
                            self.report_data(self.samps, self.node_id, self.current_samp_num, options.data_pkt)
                            self.state = NODE_IDLE
                    else:
                        print 'Received incorrect cmd in WAIT_REPORT state'
                elif self.state == SENSING:  #only reset command accepted, not added yet
                     print 'Only Reset command accepted at this state, not implemented'                
        else:
            print "error node type"
        
        return 0

    def defragment(self, payload, node_id):
        (data_seq,) = struct.unpack('!H', payload[27:29])
        if (data_seq != self.rcv_no):
            print 'Data sequence out of order'
            return 2
        else:
            (samp_num,) = struct.unpack('!H', payload[25:27])
            (start_time,) = struct.unpack('!d', payload[17:25])
            if start_time != self.current_start_time:
                print 'Recieved the packet for different start time!'
                return 3
                
            (data_per_pkt,) = struct.unpack('!H', payload[4:6])
            data_per_pkt -= 29
            #print 'data_per_pkt = ', data_per_pkt 
            max_seq = (samp_num*8)/data_per_pkt - 1
            #print 'max_seq = ', max_seq
            #print 'data_seq = ', data_seq
            if data_seq == max_seq:
                print 'get the last packet of the sensing data from node ', node_id
                self.rcv_no = 0
                return 1
            elif data_seq > max_seq:
                print 'data_seq exceeds the maximum'
                return 4
                
            self.rcv_no += 1 #Continue to collect the following packets from the same node
            return 0            
        
    def report_data(self, samps, node_id, samp_num, data_per_pkt):
        #data_per_pkt = 8*samp_num
        if data_per_pkt + 60 > 4096:
            raise ValueError, 'data_per_pkt exceedst the maximum 4096' 
            return 1                  
            
        total_length = samp_num*8    
        pkt_total = total_length/data_per_pkt
        samp_per_pkt = data_per_pkt/8
        #print 'This data has total packets', pkt_total
        #print 'Each packet contains samples ', samp_per_pkt
        for i in range(pkt_total):  #each loop generate a packet
            out_payload = ''
                
            for j in range(samp_per_pkt):
                samp = samps[j+i*samp_per_pkt]
                out_payload += struct.pack('!ff', samp.real, samp.imag)

            header = struct.pack('!HIIB', data_per_pkt + 29, BCST_ADDR, HEAD_ADDR, DATA_TYPE)
            header += struct.pack('!HdHH', node_id, self.current_start_time, samp_num, i)
            out_payload = header + out_payload  # header is put in the front !!
                
            self.output.put(out_payload)
            #print "outgoing_packet =", pkt_utils.string_to_hex_list(out_payload)  
        
        return 0
        
    def send_test_data(self):
        pktno = 0
        pkt_size = 10

        data = (pkt_size - 2) * chr(pktno & 0xff) 
        self.output.put(data)
        
    def process_collected_data(self):
        print 'process the collected data in the hash table'
        return 1
# ////////////////////////////////////////////////////////////////////
#                           Carrier Sense MAC
# ////////////////////////////////////////////////////////////////////

class cs_mac(object):
    """
    Prototype carrier sense MAC

    Reads packets from the TUN/TAP interface, and sends them to the
    PHY. Receives packets from the PHY via phy_rx_callback, and sends
    them into the TUN/TAP interface.

    Of course, we're not restricted to getting packets via TUN/TAP,
    this is just an example.
    """

    def __init__(self, csm, tun_fd, verbose=False):
        self.tun_fd = tun_fd       # file descriptor for TUN/TAP interface
        self.verbose = verbose
        self.tb = None             # top block (access to PHY)
        self.csm = csm             # state machine for round robin control

    def set_top_block(self, tb):
        self.tb = tb

    def phy_rx_callback(self, ok, payload):
        """
        Invoked by thread associated with PHY to pass received packet up.

        @param ok: bool indicating whether payload CRC was OK
        @param payload: contents of the packet (string)
        """

        #print 'phy_rx_callback'
        if self.verbose:
            print "Rx: ok = %r  len(payload) = %4d" % (ok, len(payload))
        if ok:
            self.csm.process_payload(payload, self.csm.options)
            #print 'payload processed'            
            #os.write(self.tun_fd, payload)

    def main_loop(self):
        """
        Main loop for MAC.
        Only returns if we get an error reading from TUN.

        FIXME: may want to check for EINTR and EAGAIN and reissue read
        """
        min_delay = 0.001               # seconds
        output_q = self.csm.output
        
        print 'CSMA mainloop'

        while 1:
            #payload1 = os.read(self.tun_fd, 10*1024)

            payload = output_q.get()
            #print 'pop a packet from the outq'

            self.csm.pktno += 1
            payload = struct.pack('!I', self.csm.pktno) + payload
            output_q.task_done()
            
            if not payload:
                print 'break'
                self.tb.send_pkt(eof=True)
                continue
            
            #if self.verbose:
                #print "Tx: len(payload) = %4d" % (len(payload),)
            #only send the packet from the output queue
               
            delay = min_delay
            while self.tb.carrier_sensed():
                sys.stderr.write('B')
                print 'delayed by CSMA'
                time.sleep(delay)
                if delay < 0.050:
                    delay = delay * 2       # exponential back-off
 
            #print payload
            if self.verbose:
                print "Tx: len(payload) = %4d" % (len(payload),) 
            
            t2 = self.tb.source.u.get_time_now().get_real_secs()
            print 'send at time %.7f' %t2
            self.tb.send_pkt(payload)


# /////////////////////////////////////////////////////////////////////////////
#                                   main
# /////////////////////////////////////////////////////////////////////////////

def main():

    mods = digital.modulation_utils.type_1_mods()
    demods = digital.modulation_utils.type_1_demods()

    node_types = {}
    node_types["head"] = "head"
    node_types["node"] = "node"

    parser = OptionParser (option_class=eng_option, conflict_handler="resolve")
    expert_grp = parser.add_option_group("Expert")
    parser.add_option("-m", "--modulation", type="choice", choices=mods.keys(),
                      default='gmsk',
                      help="Select modulation from: %s [default=%%default]"
                            % (', '.join(mods.keys()),))

    parser.add_option("-s", "--size", type="eng_float", default=1500,
                      help="set packet size [default=%default]")
    parser.add_option("-v","--verbose", action="store_true", default=False)
    expert_grp.add_option("-c", "--carrier-threshold", type="eng_float", default=30,
                          help="set carrier detect threshold (dB) [default=%default]")
    expert_grp.add_option("","--tun-device-filename", default="/dev/net/tun",
                          help="path to tun device file [default=%default]")
    expert_grp.add_option("-d", "--data-pkt", type="intx", default=256,
                          help="specify the data(in bytes) per packet [default=%default]")
    expert_grp.add_option("", "--samp-num", type="intx", default=8,
                          help="specify how many samples for each node at each round of acquisition [default=%default]")
    parser.add_option("", "--node-type", type="choice", choices=node_types.keys(),
                          default="node",
                          help="Select node type from: %s [default=%%default]"
                                % (', '.join(node_types.keys()),))
    parser.add_option("-i", "--node-index", type="intx", default=0, 
                          help="Specify the node index in the cluster [default=%default]")
    parser.add_option("-l", "--loop-number", type="intx", default=1,
                          help="Specify how many sesning loop to be performed")

    transmit_path.add_options(parser, expert_grp)
    receive_path.add_options(parser, expert_grp)
    uhd_receiver.add_options(parser)
    uhd_transmitter.add_options(parser)
    uhd_sensor.add_options(parser)

    for mod in mods.values():
        mod.add_options(expert_grp)

    for demod in demods.values():
        demod.add_options(expert_grp)

    (options, args) = parser.parse_args ()
    if len(args) != 0:
        parser.print_help(sys.stderr)
        sys.exit(1)

    # open the TUN/TAP interface
    (tun_fd, tun_ifname) = open_tun_interface(options.tun_device_filename)

    # Attempt to enable realtime scheduling
    r = gr.enable_realtime_scheduling()
    if r == gr.RT_OK:
        realtime = True
    else:
        realtime = False
        print "Note: failed to enable realtime scheduling"

    # instantiate the Control State Machine
    csm = ctrl_st_machine(node_types[options.node_type], options.node_index, options.loop_number, options)

    # instantiate the MAC
    mac = cs_mac(csm, tun_fd, verbose=True)

    # build the graph (PHY)
    tb = my_top_block(node_types[options.node_type],
                      options.node_index,
                      mods[options.modulation],
                      demods[options.modulation],
                      mac.phy_rx_callback,
                      options)

    csm.set_top_block(tb)
    mac.set_top_block(tb)    # give the MAC a handle for the PHY

    if tb.txpath.bitrate() != tb.rxpath.bitrate():
        print "WARNING: Transmit bitrate = %sb/sec, Receive bitrate = %sb/sec" % (
            eng_notation.num_to_str(tb.txpath.bitrate()),
            eng_notation.num_to_str(tb.rxpath.bitrate()))
             
    print "modulation:     %s"   % (options.modulation,)
    print "freq:           %s"      % (eng_notation.num_to_str(options.tx_freq))
    print "bitrate:        %sb/sec" % (eng_notation.num_to_str(tb.txpath.bitrate()),)
    print "samples/symbol: %3d" % (tb.txpath.samples_per_symbol(),)

    tb.rxpath.set_carrier_threshold(options.carrier_threshold)
    print "Carrier sense threshold:", options.carrier_threshold, "dB"
    
    print
    print "Allocated virtual ethernet interface: %s" % (tun_ifname,)
    print "You must now use ifconfig to set its IP address. E.g.,"
    print
    print "  $ sudo ifconfig %s 192.168.200.1" % (tun_ifname,)
    print
    print "Be sure to use a different address in the same subnet for each machine."
    print


    tb.start()    # Start executing the flow graph (runs in separate threads)
    
    csm.start_sensing(options.samp_num) # start the round robin command
    mac.main_loop()    # don't expect this to return...

    tb.stop()     # but if it does, tell flow graph to stop.
    tb.wait()     # wait for it to finish
                

if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        pass
