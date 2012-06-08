#!/bin/sh
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/alexzh/gr_alex/gnuradio/gr-fcd/python
export PATH=/home/alexzh/gr_alex/gnuradio/build/gr-fcd/python:$PATH
export LD_LIBRARY_PATH=/home/alexzh/gr_alex/gnuradio/build/gruel/src/lib:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib:/home/alexzh/gr_alex/gnuradio/build/gr-audio/lib:/home/alexzh/gr_alex/gnuradio/build/gr-fcd/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig:/home/alexzh/gr_alex/gnuradio/build/gr-fcd/python:/home/alexzh/gr_alex/gnuradio/build/gr-fcd/swig:$PYTHONPATH
/usr/bin/python /home/alexzh/gr_alex/gnuradio/gr-fcd/python/qa_fcd.py 
