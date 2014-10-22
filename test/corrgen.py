#!/usr/bin/env python
##################################################
# Gnuradio Python Flow Graph
# Title: Top Block
# Generated: Fri Oct 12 17:56:45 2012
##################################################

from gnuradio import eng_notation
from gnuradio import blocks
from gnuradio import gr, digital
from gnuradio import uhd
from gnuradio.eng_option import eng_option
from gnuradio.gr import firdes
from grc_gnuradio import wxgui as grc_wxgui
from optparse import OptionParser

class my_top_block(gr.top_block):

	def __init__(self):
		gr.top_block.__init__(self)

                ##################################################
		# Variables
		##################################################
		self.tx_gain = tx_gain = 20
		self.samp_rate = samp_rate = 100000
		self.center_freq = center_freq = 926000000

		##################################################
		# Blocks
		##################################################
		self.uhd_usrp_sink_0 = uhd.usrp_sink(
			device_addr="addr=192.168.10.131",
			stream_args=uhd.stream_args(
				cpu_format="fc32",
				channels=range(1),
			),
		)
		self.uhd_usrp_sink_0.set_samp_rate(samp_rate)
		self.uhd_usrp_sink_0.set_center_freq(center_freq, 0)
		self.uhd_usrp_sink_0.set_gain(tx_gain, 0)

		self.gr_file_source_0 = gr.file_source(gr.sizeof_float*1, "/home/alexzh/data.dat", False)
		self.const_source_x_0 = gr.sig_source_f(0, gr.GR_CONST_WAVE, 0, 0, 0)
		self.blocks_float_to_complex_0 = blocks.float_to_complex(1)

		##################################################
		# Connections, for blocks
		##################################################
		self.connect((self.gr_file_source_0, 0), (self.blocks_float_to_complex_0, 0))
		self.connect((self.const_source_x_0, 0), (self.blocks_float_to_complex_0, 1))
		self.connect((self.blocks_float_to_complex_0, 0), (self.uhd_usrp_sink_0, 0))
                self.connect((self.blocks_float_to_complex_0, 0), gr.file_sink(gr.sizeof_gr_complex*1,
                                                       "correlate.dat"))

	def get_tx_gain(self):
		return self.tx_gain

	def set_tx_gain(self, tx_gain):
		self.tx_gain = tx_gain
		self.uhd_usrp_sink_0.set_gain(self.tx_gain, 0)

	def get_samp_rate(self):
		return self.samp_rate

	def set_samp_rate(self, samp_rate):
		self.samp_rate = samp_rate
		self.uhd_usrp_sink_0.set_samp_rate(self.samp_rate)

	def get_center_freq(self):
		return self.center_freq

	def set_center_freq(self, center_freq):
		self.center_freq = center_freq
		self.uhd_usrp_sink_0.set_center_freq(self.center_freq, 0)

if __name__ == '__main__':
	parser = OptionParser(option_class=eng_option, usage="%prog: [options]")
	(options, args) = parser.parse_args()
	if gr.enable_realtime_scheduling() != gr.RT_OK:
		print "Error: failed to enable realtime scheduling."
	tb = my_top_block()
	tb.start()
        tb.wait()
