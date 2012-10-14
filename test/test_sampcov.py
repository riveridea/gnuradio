#!/usr/bin/env python
##################################################
# Gnuradio Python Flow Graph
# Title: Top Block
# Generated: Fri Oct 12 17:56:45 2012
##################################################

from gnuradio import eng_notation
from gnuradio import gr, digital
from gnuradio.eng_option import eng_option
from gnuradio.gr import firdes
from grc_gnuradio import wxgui as grc_wxgui
from optparse import OptionParser
import baz
import wx

class top_block(gr.top_block):

	def __init__(self):
        gr.top_block.__init__(self)

		##################################################
		# Blocks
		##################################################
		self.gr_file_source_0 = gr.file_source(gr.sizeof_gr_complex*1, "/home/alexzh/Dropbox/Public/temp.dat", False)
        self.s2v = gr.stream_to_vector(gr.sizeof_gr_complex, 32)
        self.sampcov = digital.digital_swig.sampcov_matrix_calculator(32, 400)


		##################################################
		# Connections
		##################################################
        self.connect((self.gr_file_source_0, 0), self.s2v)
        self.connect(self.s2v, self.sampcov)
        self.connect((self.sampcov, 0), gr.file_sink(gr.sizeof_gr_complex*32*32, "/home/alexzh/Dropbox/Public/sampcov.dat"))
        self.connect((self.sampcov, 1), gr.file_sink(gr.sizeof_char*32*32, "/home/alexzh/Dropbox/Public/sampcovind.dat"))

if __name__ == '__main__':
	parser = OptionParser(option_class=eng_option, usage="%prog: [options]")
	(options, args) = parser.parse_args()
	if gr.enable_realtime_scheduling() != gr.RT_OK:
		print "Error: failed to enable realtime scheduling."
	tb = top_block()
	tb.Run(True)

