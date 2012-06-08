#!/bin/sh
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/alexzh/gr_alex/gnuradio/gruel/src/python
export PATH=/home/alexzh/gr_alex/gnuradio/build/gruel/src/python:$PATH
export LD_LIBRARY_PATH=/home/alexzh/gr_alex/gnuradio/build/gruel/src/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/alexzh/gr_alex/gnuradio/build/gruel/src/python:/home/alexzh/gr_alex/gnuradio/build/gruel/src/swig:$PYTHONPATH
/usr/bin/python -B /home/alexzh/gr_alex/gnuradio/gruel/src/python/qa_pmt.py 
