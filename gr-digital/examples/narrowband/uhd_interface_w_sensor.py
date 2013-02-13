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

# Modified from uhd_interface.py
# Add a uhd_sensor 

from gnuradio import gr, uhd
from gnuradio import eng_notation
from gnuradio.eng_option import eng_option
from optparse import OptionParser

import time, threading
import struct
import sys

# streaming(0) or finite acqusition(1)
STREAM_OR_FINITE = 0

def add_freq_option(parser):
    """
    Hackery that has the -f / --freq option set both tx_freq and rx_freq
    """
    def freq_callback(option, opt_str, value, parser):
        parser.values.rx_freq = value
        parser.values.tx_freq = value

    if not parser.has_option('--freq'):
        parser.add_option('-f', '--freq', type="eng_float",
                          action="callback", callback=freq_callback,
                          help="set Tx and/or Rx frequency to FREQ [default=%default]",
                          metavar="FREQ")

class uhd_interface:
    def __init__(self, istx, addr, sym_rate, sps, samp_rate=None, freq=None,
                 gain=None, spec=None, antenna=None):
        
        if(istx): 
            self.u = uhd.usrp_sink(device_addr=addr, stream_args=uhd.stream_args('fc32'))
        else: 
            self.u = uhd.usrp_source(device_addr=addr, stream_args=uhd.stream_args('fc32'))

        # Set the subdevice spec
        if(spec):
            self.u.set_subdev_spec(spec, 0)

        # Set the antenna
        #if(antenna):
        if(istx):
            print 'set the antenna to TX/RX'
            self.u.set_antenna('TX/RX', 0)
        else:
            print 'set the antenna to RX2'
            self.u.set_antenna('TX/RX', 0)
        
        #self._args = args
        self._addr = addr
        self._ant  = antenna
        self._spec = spec
        self._gain = self.set_gain(gain)
        self._freq = self.set_freq(freq)

        self._rate, self._sps = self.set_sample_rate(sym_rate, sps, samp_rate)
        
        #setup the USRP time monitor
        #the corresponding thread would monitor the USRP time and the
        #PC time, then put the latest time to the messge queue 
        #Users of the message can get the latest time difference between
        #PC time and USRP time
        if(istx):
            self.tdiff_register = gr.msg_queue()
            self.update_time_diff()
        #the thread to monitor the PC time and the USRP time periodically
            

    def set_sample_rate(self, sym_rate, req_sps, direct_rate=None):
        start_sps = req_sps
        while(True):
            if direct_rate is None:
                asked_samp_rate = sym_rate * req_sps
            else:
                asked_samp_rate = direct_rate
            self.u.set_samp_rate(asked_samp_rate)
            actual_samp_rate = self.u.get_samp_rate()

            sps = actual_samp_rate/sym_rate
            if(sps < 2):
                req_sps +=1
            else:
                actual_sps = sps
                break
        
        if(sps != req_sps):
            print "\nSymbol Rate:         %f" % (sym_rate)
            print "Requested sps:       %f" % (start_sps)
            print "Given sample rate:   %f" % (actual_samp_rate)
            print "Actual sps for rate: %f" % (actual_sps)

        if(actual_samp_rate != asked_samp_rate):
            print "\nRequested sample rate: %f" % (asked_samp_rate)
            print "Actual sample rate: %f" % (actual_samp_rate)

        return (actual_samp_rate, actual_sps)

    def get_sample_rate(self):
        return self.u.get_samp_rate()
    
    def set_gain(self, gain=None):
        if gain is None:
            # if no gain was specified, use the mid-point in dB
            g = self.u.get_gain_range()
            gain = float(g.start()+g.stop())/2
            print "\nNo gain specified."
            print "Setting gain to %f (from [%f, %f])" % \
                (gain, g.start(), g.stop())
        
        self.u.set_gain(gain, 0)
        return gain

    def set_freq(self, freq=None):
        if(freq is None):
            sys.stderr.write("You must specify -f FREQ or --freq FREQ\n")
            sys.exit(1)
        
        r = self.u.set_center_freq(freq, 0)
        if r:
            return freq
        else:
            frange = self.u.get_freq_range()
            sys.stderr.write(("\nRequested frequency (%f) out or range [%f, %f]\n") % \
                                 (freq, frange.start(), frange.stop()))
            sys.exit(1)

    def update_time_diff(self):
        msg = self.generate_time_diff()
        while (not self.tdiff_register.empty_p()):
            self.tdiff_register.delete_head_nowait()
            continue
        self.tdiff_register.insert_tail(msg)
        threading.Timer(10, self.update_time_diff).start()           
     
    def generate_time_diff(self):
        pc_time = time.time()
        usrp_time = self.u.get_time_now().get_real_secs()
        tdiff = pc_time - usrp_time
        print tdiff
        time_diff = struct.pack('!d', tdiff)
        
        msg = gr.message_from_string(time_diff)
        
        return msg
        
#-------------------------------------------------------------------#
#   TRANSMITTER
#-------------------------------------------------------------------#

class uhd_transmitter(uhd_interface, gr.hier_block2):
    def __init__(self, addr, sym_rate, sps, frate=None, freq=None, gain=None,
                 spec=None, antenna=None, verbose=False, tdma=False):
        gr.hier_block2.__init__(self, "uhd_transmitter",
                                gr.io_signature(1,1,gr.sizeof_gr_complex),
                                gr.io_signature(0,0,0))

        # Set up the UHD interface as a transmitter
        uhd_interface.__init__(self, True, addr, sym_rate, sps, frate,
                               freq, gain, spec, antenna)

        if(not tdma): # add the tdma throttle before the uhd_sink
            self.connect(self, self.u)

        if(verbose):
            self._print_verbage()

    def insert_tdma_throttle(self, pulse_src):
        self.connect(self, pulse_src, self.u)
        
    def add_options(parser):
        add_freq_option(parser)
        parser.add_option("-a", "--args", type="string", default="",
                          help="UHD device address args [default=%default]")
        parser.add_option("", "--tx-addr", type="string", default="",
                          help="UHD device address args [default=%default]")
        parser.add_option("", "--tx-spec", type="string", default=None,
                          help="Subdevice of UHD device where appropriate")
        parser.add_option("", "--tx-antenna", type="string", default=None,
                          help="select Rx Antenna where appropriate")
        parser.add_option("", "--tx-freq", type="eng_float", default=None,
                          help="set transmit frequency to FREQ [default=%default]",
                          metavar="FREQ")
        parser.add_option("", "--tx-gain", type="eng_float", default=None,
                          help="set transmit gain in dB (default is midpoint)")
        parser.add_option("-v", "--verbose", action="store_true", default=False)
        parser.add_option("", "--tx-samprate", type="eng_float", default=None,
                          help="set sample rate for transmitter [default=%default]")

    # Make a static method to call before instantiation
    add_options = staticmethod(add_options)

    def _print_verbage(self):
        """
        Prints information about the UHD transmitter
        """
        print "\nUHD Transmitter:"
        print "UHD TX Addr:     %s"    % (self._addr)
        print "Freq:        %sHz"  % (eng_notation.num_to_str(self._freq))
        print "Gain:        %f dB" % (self._gain)
        print "Sample Rate: %ssps" % (eng_notation.num_to_str(self._rate))
        print "Antenna:     %s"    % (self._ant)
        print "Subdev Sec:  %s"    % (self._spec)


#-------------------------------------------------------------------#
#   RECEIVER
#-------------------------------------------------------------------#


class uhd_receiver(uhd_interface, gr.hier_block2):
    def __init__(self, addr, sym_rate, sps, freq=None, gain=None,
                 spec=None, antenna=None, verbose=False):
        gr.hier_block2.__init__(self, "uhd_receiver",
                                gr.io_signature(0,0,0),
                                gr.io_signature(1,1,gr.sizeof_gr_complex))
      
        # Set up the UHD interface as a receiver
        uhd_interface.__init__(self, False, addr, sym_rate, sps,
                               freq, gain, spec, antenna)

        self.connect(self.u, self)

        if(verbose):
            self._print_verbage()

    def add_options(parser):
        add_freq_option(parser)
        parser.add_option("", "--rx-addr", type="string", default="",
                          help="UHD device address args [default=%default]")
        parser.add_option("", "--rx-spec", type="string", default=None,
                          help="Subdevice of UHD device where appropriate")
        parser.add_option("", "--rx-antenna", type="string", default=None,
                          help="select Rx Antenna where appropriate")
        parser.add_option("", "--rx-freq", type="eng_float", default=None,
                          help="set receive frequency to FREQ [default=%default]",
                          metavar="FREQ")
        parser.add_option("", "--rx-gain", type="eng_float", default=None,
                          help="set receive gain in dB (default is midpoint)")
        if not parser.has_option("--verbose"):
            parser.add_option("-v", "--verbose", action="store_true", default=False)

    # Make a static method to call before instantiation
    add_options = staticmethod(add_options)

    def _print_verbage(self):
        """
        Prints information about the UHD transmitter
        """
        print "\nUHD Receiver:"
        print "UHD Receiver Addr:  %s"    % (self._addr)
        print "Freq:        %sHz"  % (eng_notation.num_to_str(self._freq))
        print "Gain:        %f dB" % (self._gain)
        print "Sample Rate: %ssps" % (eng_notation.num_to_str(self._rate))
        print "Antenna:     %s"    % (self._ant)
        print "Spec:        %s"    % (self._spec)

        
#-------------------------------------------------------------------#
#   SENSOR
#-------------------------------------------------------------------#       
class uhd_sensor(uhd_interface, gr.hier_block2):
    def __init__(self, addr, samp_rate, freq=None, gain=None,
                 spec=None, antenna=None, verbose=False):
        gr.hier_block2.__init__(self, "uhd_sensor",
                                gr.io_signature(0,0,0),
                                gr.io_signature(1,1,gr.sizeof_gr_complex))
      
        self.u = uhd.usrp_source(device_addr=addr, stream_args=uhd.stream_args('fc32'))

        # Set the subdevice spec
        if(spec):
            self.u.set_subdev_spec(spec, 0)

        # Set the antenna
        if(antenna):
            self.u.set_antenna(antenna, 0)
            
        # Set the streaming of the source as start on demand
        # tb.start will not start streaming right now
        # the streaming will only be started after the sensor 
        # receives the demand
        if (STREAM_OR_FINITE == 0):
            self.u.set_start_on_demand()
        
        self._addr = addr
        self._ant  = antenna
        self._spec = spec
        self._gain = self.set_gain(gain)
        self._freq = self.set_freq(freq)

        # Set the sample rate
        if(samp_rate is None):
            sys.stderr.write("You must specify --sx-samprate for uhd sensor\n")
            sys.exit(1)            
        else:
            self._rate = self.u.set_samp_rate(samp_rate)

        self.connect(self.u, self)

        if(verbose):
            self._print_verbage()

    def add_options(parser):
        add_freq_option(parser)
        parser.add_option("", "--sx-addr", type="string", default="",
                          help="UHD device address args [default=%default]")
        parser.add_option("", "--sx-spec", type="string", default=None,
                          help="Subdevice of UHD device where appropriate")
        parser.add_option("", "--sx-antenna", type="string", default=None,
                          help="select Sx Antenna where appropriate")
        parser.add_option("", "--sx-freq", type="eng_float", default=None,
                          help="set sensing frequency to FREQ [default=%default]",
                          metavar="FREQ")
        parser.add_option("", "--sx-samprate", type="eng_float", default=None,
                          help="set sample rate for sensor to [default=%default]")
        parser.add_option("", "--sx-gain", type="eng_float", default=None,
                          help="set sensor gain in dB (default is midpoint)")
        if not parser.has_option("--verbose"):
            parser.add_option("-v", "--verbose", action="store_true", default=False)

    # Make a static method to call before instantiation
    add_options = staticmethod(add_options)

    def _print_verbage(self):
        """
        Prints information about the UHD transmitter
        """
        print "\nUHD Receiver:"
        print "UHD Addrs:    %s"    % (self._addr)
        print "Freq:        %sHz"  % (eng_notation.num_to_str(self._freq))
        print "Gain:        %f dB" % (self._gain)
        print "Sample Rate: %ssps" % (eng_notation.num_to_str(self._rate))
        print "Antenna:     %s"    % (self._ant)
        print "Spec:        %s"    % (self._spec)        
        
