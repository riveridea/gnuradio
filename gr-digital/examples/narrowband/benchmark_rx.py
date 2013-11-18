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
from uhd_interface_w_sensor import uhd_sensor

import struct
import sys
import threading
import time

import socket

#import os
#print os.getpid()
#raw_input('Attach and press enter: ')

ds = 32

class my_top_block(gr.top_block):        
    def start_streaming(self):
        stime = self.source.u.get_time_now().get_real_secs()
        self.source.u.set_start_time(uhd.time_spec_t(stime + 2))
        #self.start()
        self.source.u.start()
        print 'start streaming'
        ##############################          
        #try:
        # Create a TCP/IP socket
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        # Connect the socket to the port where the server is listening
        server_address = ('cri-node-10.ch.dhcp.tntech.edu', 10000)
        print >>sys.stderr, 'connecting to %s port %s' % server_address
        sock.connect(server_address)
      	    # Send data
    	message_start_stream = 'start streaming'
    	print >>sys.stderr, 'sending "%s"' % message_start_stream
    	sock.sendall(message_start_stream)

    	    # Look for the response
    	amount_received = 0
    	amount_expected = len(message_start_stream)
    
    	while amount_received < amount_expected:
             data = sock.recv(16)
             amount_received += len(data)
             print >>sys.stderr, 'received "%s"' % data
        ##############################
        
    def __init__(self, demodulator, rx_callback, options):
        gr.top_block.__init__(self)

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
                                       
            self.source.u.set_start_on_demand()
            #options.samples_per_symbol = self.source._sps
            #devices = uhd.find_devices_raw()
            #addr0 = devices[0].to_string()
            #self.source = uhd_sensor(addr0[11:30], ask_sample_rate,
            #                       options.sx_freq, options.sx_gain,
            #                       options.sx_spec, options.sx_antenna, 
            #                        options.verbose)
                                   
            #self.sampcov = digital.digital_swig.sampcov_matrix_calculator(ds,800,16)
            #self.sampcov = digital.digital_swig.sampcov_matrix_generator(ds,800)
            #self.s2v = gr.stream_to_vector(gr.sizeof_gr_complex, ds*800)
            #self.v2s = gr.vector_to_stream(gr.sizeof_gr_complex, ds*800) 
            #self.tracer = digital.digital_swig.trace_calculator(ds)
            #self.gr_file_sink3 = gr.file_sink(gr.sizeof_float, "/home/alexzh/Dropbox/Public/trace.dat")
            #self.gr_file_sink4 = gr.file_sink(gr.sizeof_float*ds, "eigenvalue.dat")
            self.gr_file_sink5 = gr.file_sink(gr.sizeof_gr_complex, "file.dat")
            #self.gr_file_sink6 = gr.file_sink(gr.sizeof_gr_complex*ds*800, "file2.dat")
            
            #self.eval = digital.digital_swig.eigen_herm(ds)
            
            #self.source.u.set_center_freq(uhd.tune_request(options.rx_freq, ask_sample_rate*2), 0)
            #print 'In locking '
            #while (self.source.u.get_sensor("lo_locked").to_bool() == False):
            #    print '.'
        
            #print 'Locked'

        elif(options.from_file is not None):
            sys.stderr.write(("Reading samples from '%s'.\n\n" % (options.from_file)))
            self.source = gr.file_source(gr.sizeof_gr_complex, options.from_file)
        else:
            sys.stderr.write("No source defined, pulling samples from null source.\n\n")
            self.source = gr.null_source(gr.sizeof_gr_complex)

        # Set up receive path
        # do this after for any adjustments to the options that may
        # occur in the sinks (specifically the UHD sink)
        #self.rxpath = receive_path(demodulator, rx_callback, options) 

        #self.connect(self.source, self.rxpath)
        self.connect(self.source, self.gr_file_sink5)
        #self.connect(self.source, self.s2v)
        #self.connect(self.s2v, self.sampcov)
        #self.connect(self.s2v, self.v2s)
        #self.connect(self.v2s, self.gr_file_sink5)
        #self.connect(self.s2v, self.gr_file_sink6)
        
        #self.connect(self.source, gr.file_sink(gr.sizeof_gr_complex, "benchmark_sensing.dat"))
        #self.connect((self.sampcov, 0), gr.file_sink(gr.sizeof_gr_complex*32*32, "samplecovmatrix.dat"))
        #self.connect((self.sampcov, 1), gr.file_sink(gr.sizeof_char*32*32, "sampcovind.dat"))

	#self.connect((self.sampcov, 0), (self.tracer, 0))
	#self.connect((self.sampcov, 1), (self.tracer, 1))
	#self.connect((self.sampcov, 0), (self.eval, 0))
	#self.connect((self.sampcov, 1), (self.eval, 1))
	#self.connect(self.tracer, self.gr_file_sink3)
	#self.connect(self.eval, self.gr_file_sink4)
	#self.connect(self.tracer, self.gr_file_sink3)		
 
        self.timer = threading.Timer(1, self.start_streaming)



# /////////////////////////////////////////////////////////////////////////////
#                                   main
# /////////////////////////////////////////////////////////////////////////////

global n_rcvd, n_right

def main():
    ##############################          
        # Create a TCP/IP socket
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    ##############################
    global n_rcvd, n_right

    n_rcvd = 0
    n_right = 0
    
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

    receive_path.add_options(parser, expert_grp)
    uhd_receiver.add_options(parser)
    uhd_sensor.add_options(parser)

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
    tb = my_top_block(demods[options.modulation], rx_callback, options)

    r = gr.enable_realtime_scheduling()
    if r != gr.RT_OK:
        print "Warning: Failed to enable realtime scheduling."

    #tb.source.u.set_start_on_demand()
    
    tb.start()        # start flow graph
    #self.source.u.stop()
    #time.sleep(10)
    tb.timer.start()
    #tb.source.u.start()
    
    tb.wait()         # wait for it to finish
    ######################################
    #finally:
    print >>sys.stderr, 'closing socket'
    sock.close()
    ######################################
if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        pass
