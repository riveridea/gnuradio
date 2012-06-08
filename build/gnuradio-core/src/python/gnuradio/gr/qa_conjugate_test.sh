#!/bin/sh
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/python/gnuradio/gr
export PATH=/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/gr:$PATH
export LD_LIBRARY_PATH=/home/alexzh/gr_alex/gnuradio/build/volk/lib:/home/alexzh/gr_alex/gnuradio/build/gruel/src/lib:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig:$PYTHONPATH
/usr/bin/python -B /home/alexzh/gr_alex/gnuradio/gnuradio-core/src/python/gnuradio/gr/qa_conjugate.py 
