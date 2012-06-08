#!/bin/sh
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/alexzh/gr_alex/gnuradio/gr-vocoder/python
export PATH=/home/alexzh/gr_alex/gnuradio/build/gr-vocoder/python:$PATH
export LD_LIBRARY_PATH=/home/alexzh/gr_alex/gnuradio/build/volk/lib:/home/alexzh/gr_alex/gnuradio/build/gruel/src/lib:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib:/home/alexzh/gr_alex/gnuradio/build/gr-vocoder/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig:/home/alexzh/gr_alex/gnuradio/build/gr-vocoder/python:/home/alexzh/gr_alex/gnuradio/build/gr-vocoder/swig:$PYTHONPATH
/usr/bin/python -B /home/alexzh/gr_alex/gnuradio/gr-vocoder/python/qa_alaw_vocoder.py 
