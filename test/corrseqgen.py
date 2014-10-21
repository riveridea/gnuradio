#!/usr/bin/env python
##################################################
# Gnuradio Python Flow Graph
# Title: Top Block
# Generated: Mon Oct 20 17:48:59 2014
##################################################

from gnuradio import analog
from gnuradio import blocks
from gnuradio import eng_notation
from gnuradio import filter
from gnuradio import gr
from gnuradio import uhd
from gnuradio.eng_option import eng_option
from gnuradio.gr import firdes
from grc_gnuradio import wxgui as grc_wxgui
from optparse import OptionParser
import time
import wx

class my_top_block(gr.top_block):

	def __init__(self):
                gr.top_block.__init__(self)

		##################################################
		# Variables
		##################################################
		self.tx_gain = tx_gain = 20
		self.samp_rate = samp_rate = 6000000
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
		self.iir_filter_ffd_0 = filter.iir_filter_ffd(([2]), ([-1]))
		self.const_source_x_0 = gr.sig_source_f(0, gr.GR_CONST_WAVE, 0, 0, 0)
		self.blocks_float_to_complex_0 = blocks.float_to_complex(1)
		self.analog_noise_source_x_0 = analog.noise_source_f(analog.GR_GAUSSIAN, 1, 0)

		##################################################
		# Connections
		##################################################
		self.connect((self.analog_noise_source_x_0, 0), (self.iir_filter_ffd_0, 0))
		self.connect((self.iir_filter_ffd_0, 0), (self.blocks_float_to_complex_0, 0))
		self.connect((self.const_source_x_0, 0), (self.blocks_float_to_complex_0, 1))
		self.connect((self.blocks_float_to_complex_0, 0), (self.uhd_usrp_sink_0, 0))
                self.connect((self.iir_filter_ffd_0, 0), gr.file_sink(gr.sizeof_gr_float*1,
                                                       "correlate.dat"))
                self.connect((self.analog_noise_source_x_0, 0), gr.file_sink(gr.sizeof_gr_float*1,
                                                       "guassian.dat"))


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
