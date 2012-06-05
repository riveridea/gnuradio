#!/usr/bin/env python
##################################################
# Gnuradio Python Flow Graph
# Title: Top Block
# Generated: Sun Jun  3 18:08:45 2012
##################################################

from gnuradio import eng_notation
from gnuradio import gr
from gnuradio import uhd
from gnuradio.eng_option import eng_option
from gnuradio.gr import firdes
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
		self.samp_rate = samp_rate = 3225806

		##################################################
		# Blocks
		##################################################
		self.uhd_usrp_source_0 = uhd.usrp_source(
			device_addr="addr=192.168.10.120",
			stream_args=uhd.stream_args(
				cpu_format="fc32",
				channels=range(1),
			),
		)
		#self.uhd_usrp_source_0.set_time_source("gpsdo", 0)
		self.uhd_usrp_source_0.set_samp_rate(samp_rate)
		self.uhd_usrp_source_0.set_center_freq(908000000, 0)
		self.uhd_usrp_source_0.set_gain(0, 0)
		self.gr_file_sink_0 = gr.file_sink(gr.sizeof_gr_complex*1, "/home/alexzh/gnuradio/test/stream")
		self.gr_file_sink_0.set_unbuffered(False)

		##################################################
		# Connections
		##################################################
		self.connect((self.uhd_usrp_source_0, 0), (self.gr_file_sink_0, 0))

	def get_samp_rate(self):
		return self.samp_rate

	def set_samp_rate(self, samp_rate):
		self.samp_rate = samp_rate
		self.uhd_usrp_source_0.set_samp_rate(self.samp_rate)

class stream_control(object):
    
    def __init__(self, tb, itera):
        self._tb = tb
	self._itera = itera

    def stream_loop(self):
	print "enter stream_loop"
        if tb == none:
            print "no top block specified and exit"
            sys.exit(1)

        for i in range(itera):
            t = self._tb.uhd_usrp_source_0.get_time_now(0).get_real_secs() + 4
            print t
            self._tb.uhd_usrp_source_0.set_start_time(uhd.time_spec_t(t))
            self._tb.uhd_usrp_source_0.finite_acquisition(4096)
        

def main():
    
    print "0"
    tb = top_block()
    print "0-1"
    tb.start()

    itera = 10
    print "1"
    s_ctrl = stream_control(tb, itera)
    
    print "2"
    s_ctrl.stream_loop()

    tb.stop()
    tb.wait()


if __name__ == '__main__':
	parser = OptionParser(option_class=eng_option, usage="%prog: [options]")
	(options, args) = parser.parse_args()
	try:
            main()
        except KeyboardInterrupt:
            pass
	

