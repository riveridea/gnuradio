#!/usr/bin/env python
##################################################
# Gnuradio Python Flow Graph
# Title: Top Block
# Generated: Mon May 21 21:21:36 2012
##################################################

from gnuradio import blks2
from gnuradio import eng_notation
from gnuradio import gr
from gnuradio import uhd
from gnuradio import window
from gnuradio.eng_option import eng_option
from gnuradio.gr import firdes
from gnuradio.wxgui import fftsink2
from grc_gnuradio import wxgui as grc_wxgui
from optparse import OptionParser
import wx

class top_block(grc_wxgui.top_block_gui):

	def __init__(self):
		grc_wxgui.top_block_gui.__init__(self, title="Top Block")
		_icon_path = "/usr/share/icons/hicolor/32x32/apps/gnuradio-grc.png"
		self.SetIcon(wx.Icon(_icon_path, wx.BITMAP_TYPE_ANY))

		##################################################
		# Variables
		##################################################
		self.samp_rate_1 = samp_rate_1 = 1024000
		self.samp_rate_2 = samp_rate_2 = samp_rate_1/10

		##################################################
		# Blocks
		##################################################
		self.wxgui_fftsink2_1 = fftsink2.fft_sink_c(
			self.GetWin(),
			baseband_freq=928000000,
			y_per_div=20,
			y_divs=10,
			ref_level=0,
			ref_scale=2.0,
			sample_rate=samp_rate_1,
			fft_size=1024,
			fft_rate=15,
			average=False,
			avg_alpha=None,
			title="FFT Plot",
			peak_hold=False,
		)
		self.Add(self.wxgui_fftsink2_1.win)
		self.wxgui_fftsink2_0 = fftsink2.fft_sink_c(
			self.GetWin(),
			baseband_freq=908000000,
			y_per_div=20,
			y_divs=10,
			ref_level=0,
			ref_scale=2.0,
			sample_rate=samp_rate_1,
			fft_size=1024,
			fft_rate=15,
			average=False,
			avg_alpha=None,
			title="FFT Plot",
			peak_hold=False,
		)
		self.Add(self.wxgui_fftsink2_0.win)
		self.uhd_usrp_source_0 = uhd.usrp_source(
			device_addr="",
			stream_args=uhd.stream_args(
				cpu_format="fc32",
				channels=range(2),
			),
		)
		#self.uhd_usrp_source_0.set_clock_rate(918000000, uhd.ALL_MBOARDS)
		tr1 = uhd.tune_request(908e6, rf_freq=918e6, rf_freq_policy=uhd.tune_request.POLICY_MANUAL);
		tr2 = uhd.tune_request(928e6, rf_freq=918e6, rf_freq_policy=uhd.tune_request.POLICY_MANUAL);
		self.uhd_usrp_source_0.set_subdev_spec("A:0 A:0", 0)
		self.uhd_usrp_source_0.set_samp_rate(1024000)
		#self.uhd_usrp_source_0.set_center_freq(908000000, 0)
		self.uhd_usrp_source_0.set_center_freq(tr1, 0)
		self.uhd_usrp_source_0.set_gain(0, 0)
		self.uhd_usrp_source_0.set_antenna("RX2", 0)
		#self.uhd_usrp_source_0.set_center_freq(928000000, 1)
                self.uhd_usrp_source_0.set_center_freq(tr2, 1)
		self.uhd_usrp_source_0.set_gain(0, 1)
		self.uhd_usrp_source_0.set_antenna("RX2", 1)
		self.gr_throttle_0_0 = gr.throttle(gr.sizeof_gr_complex*1, samp_rate_1)
		self.gr_throttle_0 = gr.throttle(gr.sizeof_gr_complex*1, samp_rate_1)
		self.blks2_rational_resampler_xxx_0_0 = blks2.rational_resampler_ccc(
			interpolation=1,
			decimation=samp_rate_1/samp_rate_2/10,
			taps=None,
			fractional_bw=None,
		)
		self.blks2_rational_resampler_xxx_0 = blks2.rational_resampler_ccc(
			interpolation=1,
			decimation=samp_rate_1/samp_rate_2/10,
			taps=None,
			fractional_bw=None,
		)

		##################################################
		# Connections
		##################################################
		self.connect((self.uhd_usrp_source_0, 0), (self.blks2_rational_resampler_xxx_0, 0))
		self.connect((self.gr_throttle_0, 0), (self.wxgui_fftsink2_0, 0))
		self.connect((self.blks2_rational_resampler_xxx_0, 0), (self.gr_throttle_0, 0))
		self.connect((self.uhd_usrp_source_0, 1), (self.blks2_rational_resampler_xxx_0_0, 0))
		self.connect((self.blks2_rational_resampler_xxx_0_0, 0), (self.gr_throttle_0_0, 0))
		self.connect((self.gr_throttle_0_0, 0), (self.wxgui_fftsink2_1, 0))

	def get_samp_rate_1(self):
		return self.samp_rate_1

	def set_samp_rate_1(self, samp_rate_1):
		self.samp_rate_1 = samp_rate_1
		self.set_samp_rate_2(self.samp_rate_1/10)
		self.wxgui_fftsink2_0.set_sample_rate(self.samp_rate_1)
		self.wxgui_fftsink2_1.set_sample_rate(self.samp_rate_1)

	def get_samp_rate_2(self):
		return self.samp_rate_2

	def set_samp_rate_2(self, samp_rate_2):
		self.samp_rate_2 = samp_rate_2

if __name__ == '__main__':
	parser = OptionParser(option_class=eng_option, usage="%prog: [options]")
	(options, args) = parser.parse_args()
	tb = top_block()
	tb.Run(True)

