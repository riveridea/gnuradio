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

from gnuradio import gr
from gnuradio import eng_notation
from gnuradio.eng_option import eng_option
from optparse import OptionParser

# From gr-digital
from gnuradio import digital

# from current dir
from transmit_path import transmit_path
from uhd_interface import uhd_transmitter

import time, struct, sys

#import os 
#print os.getpid()
#raw_input('Attach and press enter')

pn1023 = '\x80\x24\x9A\x6B\xE6\x3E\x47\x7E\x1C\x07\xFE\x38\x9D\x95\xDE\xA3\xD2\xA0\xBF\xD5\x5E\x87\x48\xCB\x59\xEB\x19\xF9\x54\xCC\xA7\xD3\x84\x6C\x8A\x6F\x75\x73\x3B\xB9\xD4\xE8\x3D\xB8\x62\x52\xCD\x11\x69\x74\xC5\x81\x49\x7D\xE3\x1B\xB0\xF2\x72\xC4\x37\xF3\x8D\x4A\x10\x96\xFA\xE2\xE4\x3E\xD5\x17\xB3\x9F\x07\x25\x65\xE5\xC1\x5B\x30\xD6\xE8\xAF\xD1\xCD\xCA\x34\x0C\x91\x04\xDA\x79\xAB\x0B\xB4\x61\x3F\xB8\xF0\x3B\x62\x89\x90\x69\x3D\xF1\x56\x85\x01\x6D\xE7\x88\xFD\x8E\xB5\x0C\xD8\x30\x0D\xB5\xD7\x85\x48\x59\x30\x44\x80'

pn511 = '\x82\x5B\x8E\x63\xE0\xAA\xCA\xE8\xD5\x1D\x26\x8A\xD4\xFC\x6D\x0B\xBD\x40\xCC\x8C\xB0\x99\xE9\xC4\xF3\x67\x57\xB6\x0D\x29\x80\x88\xF7\x20\xEE\xB1\x78\xA2\x45\x9A\xDB\xF6\x31\x00\xF0\xA5\xC0\xB4\xDE\x50\xC3\x86\xEC\x92\xA4\x21\xFF\x5F\x39\x7F\x27\x6B\x9F\x7C'

pn255_1 = '\x80\x8E\x25\xC0\xC9\x37\x20\xAD\xAC\xB0\xFB\x7A\xE8\x86\xC7\x9C\xC5\xA4\x52\xA7\x76\x7B\xF4\xCD\x46\x0E\xAB\xE5\x09\xFE\x17\x8D'
pn255_2 = '\x80\xBD\x81\xC6\x82\x4B\x86\xDC\x8B\x65\x9D\xAE\xA6\xF3\xEB\x14\x3D\x3C\x47\x44\xC9\xCD\x5A\x57\xEE\xF8\x33\x08\x55\x18\xFF\x28'
pn255_3 = '\x80\xCF\xA3\x6A\xB4\xC5\x24\x47\x4A\x2F\x5F\x21\x04\xDC\xD0\x2A\x1C\xB7\xFB\xA9\xED\x99\x3B\xCE\x3C\x2C\x61\xAC\xAE\x0F\xC4\xBA'
pn255_4 = '\x80\x97\xF8\xD5\x7B\x32\x91\x18\xF0\x85\x07\xCF\xD4\x54\xC3\x3B\xEE\x95\xA7\x36\x2E\xDE\x5B\x5C\x93\x47\x13\xD0\xEB\x05\x90\x36'

pn15 = '\x8F\x58'
pn31 = '\x85\x76\x3E\x68'

class my_top_block(gr.top_block):
    def __init__(self, modulator, options):
        gr.top_block.__init__(self)

        if(options.tx_freq is not None):
            # Work-around to get the modulation's bits_per_symbol
            args = modulator.extract_kwargs_from_options(options)
            symbol_rate = options.bitrate / modulator(**args).bits_per_symbol()

            self.sink = uhd_transmitter(options.args, symbol_rate,
                                        options.samples_per_symbol,
                                        options.tx_freq, options.tx_gain,
                                        options.spec, options.antenna,
                                        options.verbose)
            options.samples_per_symbol = self.sink._sps
            
        elif(options.to_file is not None):
            sys.stderr.write(("Saving samples to '%s'.\n\n" % (options.to_file)))
            self.sink = gr.file_sink(gr.sizeof_gr_complex, options.to_file)
        else:
            sys.stderr.write("No sink defined, dumping samples to null sink.\n\n")
            self.sink = gr.null_sink(gr.sizeof_gr_complex)

        print self.sink._args

        # do this after for any adjustments to the options that may
        # occur in the sinks (specifically the UHD sink)
        self.txpath = transmit_path(modulator, options)

        self.connect(self.txpath, self.sink)

# /////////////////////////////////////////////////////////////////////////////
#                                   main
# /////////////////////////////////////////////////////////////////////////////

def main():

    def send_pkt(payload='', eof=False):
        return tb.txpath.send_pkt(payload, eof)

    mods = digital.modulation_utils.type_1_mods()

    parser = OptionParser(option_class=eng_option, conflict_handler="resolve")
    expert_grp = parser.add_option_group("Expert")

    parser.add_option("-m", "--modulation", type="choice", choices=mods.keys(),
                      default='psk',
                      help="Select modulation from: %s [default=%%default]"
                            % (', '.join(mods.keys()),))

    parser.add_option("-s", "--size", type="eng_float", default=1500,
                      help="set packet size [default=%default]")
    parser.add_option("-M", "--megabytes", type="eng_float", default=1.0,
                      help="set megabytes to transmit [default=%default]")
    parser.add_option("","--discontinuous", action="store_true", default=False,
                      help="enable discontinous transmission (bursts of 5 packets)")
    parser.add_option("","--from-file", default=None,
                      help="use intput file for packet contents")
    parser.add_option("","--netsync", action="store_true", default=False,
                      help="use one PN sequence sent to all receivers for their data sync")
    parser.add_option("","--to-file", default=None,
                      help="Output file for modulated samples")

    transmit_path.add_options(parser, expert_grp)
    uhd_transmitter.add_options(parser)

    for mod in mods.values():
        mod.add_options(expert_grp)

    (options, args) = parser.parse_args ()

    if len(args) != 0:
        parser.print_help()
        sys.exit(1)
           
    if options.from_file is not None:
        source_file = open(options.from_file, 'r')

            if self.randbinfile == True:
                txfile_name = '/home/alexzh/' + self.addrs[i] + '_randtx'
                with open(txfile_name, 'wb') as fout:
                    fout.write(os.urandom(8388608))  #generate a file of 8M random data

    # build the graph
    tb = my_top_block(mods[options.modulation], options)

    r = gr.enable_realtime_scheduling()
    if r != gr.RT_OK:
        print "Warning: failed to enable realtime scheduling"

    tb.start()                       # start flow graph
        
    # generate and send packets
    nbytes = int(1e6 * options.megabytes)
    n = 0
    pktno = 0
    pkt_size = int(options.size)

    pkt_size = 1280
    pn_number = 2000 
    filex = 0
    #pkt_size = pn_number*2 + 2
    while n < nbytes:
        if options.netsync:
            data = pn1023
            n = nbytes #only one PN sequence is sent
            print 'send one PN sync signal'
        elif options.from_file is None:
            #data = (pkt_size - 2) * chr(pktno & 0xff)
            #if pktno % 4 == 0: 
            #    data = 64*pn255_1
            #elif pktno % 4 == 1:
            #    data = 64*pn255_2
            #elif pktno % 4 == 2:
            #    data = 64*pn255_3
            #elif pktno % 4 == 3:
            #    data = 64*pn255_4

            data = 64*pn255_1
        else:
            filex = 1
            data = source_file.read(pkt_size - 2)
            if data == '':
                print 'file done'
                break;

        #payload = struct.pack('!H', pktno & 0xffff) + data
        payload = data
        send_pkt(payload)
        if filex == 0:  
            n += len(payload)
        sys.stderr.write('.')
        if options.discontinuous and pktno % 5 == 4:
            time.sleep(1)
        pktno += 1
        
    send_pkt(eof=True)

    tb.wait()                       # wait for it to finish

if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        pass
