#!/bin/sh
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/alexzh/gr_alex/gnuradio/gr-pager/python
export PATH=/home/alexzh/gr_alex/gnuradio/build/gr-pager/python:$PATH
export LD_LIBRARY_PATH=/home/alexzh/gr_alex/gnuradio/build/volk/lib:/home/alexzh/gr_alex/gnuradio/build/gruel/src/lib:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib:/home/alexzh/gr_alex/gnuradio/build/gr-pager/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig:/home/alexzh/gr_alex/gnuradio/build/gr-pager/python:/home/alexzh/gr_alex/gnuradio/build/gr-pager/swig:$PYTHONPATH
/usr/bin/python /home/alexzh/gr_alex/gnuradio/gr-pager/python/qa_pager.py 
