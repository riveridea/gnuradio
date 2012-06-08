#!/bin/sh
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/alexzh/gr_alex/gnuradio/gr-atsc/src/python
export PATH=/home/alexzh/gr_alex/gnuradio/build/gr-atsc/src/python:$PATH
export LD_LIBRARY_PATH=/home/alexzh/gr_alex/gnuradio/build/volk/lib:/home/alexzh/gr_alex/gnuradio/build/gruel/src/lib:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib:/home/alexzh/gr_alex/gnuradio/build/gr-atsc/src/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig:/home/alexzh/gr_alex/gnuradio/build/gr-atsc/src/lib:$PYTHONPATH
/usr/bin/python -B /home/alexzh/gr_alex/gnuradio/gr-atsc/src/python/qa_atsc.py 
