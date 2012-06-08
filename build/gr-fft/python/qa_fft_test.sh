#!/bin/sh
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/alexzh/gr_alex/gnuradio/gr-fft/python
export PATH=/home/alexzh/gr_alex/gnuradio/build/gr-fft/python:$PATH
export LD_LIBRARY_PATH=/home/alexzh/gr_alex/gnuradio/build/gruel/src/lib:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib:/home/alexzh/gr_alex/gnuradio/build/gr-fft/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig:/home/alexzh/gr_alex/gnuradio/build/gr-fft/python:/home/alexzh/gr_alex/gnuradio/build/gr-fft/swig:$PYTHONPATH
/usr/bin/python /home/alexzh/gr_alex/gnuradio/gr-fft/python/qa_fft.py 
