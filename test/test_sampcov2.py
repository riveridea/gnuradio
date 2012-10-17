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

class top_block(grc_wxgui.top_block_gui):

	def __init__(self):
		grc_wxgui.top_block_gui.__init__(self, title="Top Block")
		_icon_path = "/usr/share/icons/hicolor/32x32/apps/gnuradio-grc.png"
		self.SetIcon(wx.Icon(_icon_path, wx.BITMAP_TYPE_ANY))

		##################################################
		# Blocks
		##################################################
		#self.pow_cc_0 = baz.pow_cc(2.0, 0.0)
		self.gr_file_source_0 = gr.file_source(gr.sizeof_gr_complex*1, "/home/alexzh/Dropbox/Public/temp.dat", False)
		self.gr_file_sink1 = gr.file_sink(gr.sizeof_gr_complex*32*32, "/home/alexzh/Dropbox/Public/sampcov.dat")
 		self.gr_file_sink2 = gr.file_sink(gr.sizeof_char*32*32, "/home/alexzh/Dropbox/Public/sampcovind.dat")
		self.gr_file_sink3 = gr.file_sink(gr.sizeof_float, "/home/alexzh/Dropbox/Public/trace.dat")
		self.gr_file_sink4 = gr.file_sink(gr.sizeof_float*32, "eigenvalue.dat")

		#self.gr_file_sink_2 = gr.file_sink(gr.sizeof_gr_complex*1, "test.dat")
		#self.gr_file_sink_2.set_unbuffered(False)
		#self.tracer = digital.digital_swig.trace_calculator(32)
		self.eval = digital.digital_swig.eigen_herm(32)

		self.s2v = gr.stream_to_vector(gr.sizeof_gr_complex, 32)
		self.sampcov = digital.digital_swig.sampcov_matrix_calculator(32, 100)        
		##################################################
		# Connections
		##################################################
		#self.connect((self.pow_cc_0, 0), (self.gr_file_sink_2, 0))
		#self.connect((self.gr_file_source_0, 0), (self.pow_cc_0, 0))

		
		self.connect((self.gr_file_source_0, 0), self.s2v)
		self.connect(self.s2v, self.sampcov)
		#self.connect(self.gr_file_source_0, gr.file_sink(gr.sizeof_gr_complex, "origin.dat"))
		#self.connect(self.s2v, gr.file_sink(gr.sizeof_gr_complex*32, "vector.dat"))
		self.connect((self.sampcov, 0), self.gr_file_sink1)
		self.connect((self.sampcov, 1), self.gr_file_sink2)
		#self.connect((self.sampcov, 0), (self.tracer, 0))
		#self.connect((self.sampcov, 1), (self.tracer, 1))
		self.connect((self.sampcov, 0), (self.eval, 0))
		self.connect((self.sampcov, 1), (self.eval, 1))
		#self.connect(self.tracer, self.gr_file_sink3)
		self.connect(self.eval, self.gr_file_sink4)


if __name__ == '__main__':
	parser = OptionParser(option_class=eng_option, usage="%prog: [options]")
	(options, args) = parser.parse_args()
	if gr.enable_realtime_scheduling() != gr.RT_OK:
		print "Error: failed to enable realtime scheduling."
	tb = top_block()
	tb.Run(True)

