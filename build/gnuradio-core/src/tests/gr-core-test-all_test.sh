#!/bin/sh
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/tests
export PATH=/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/tests:$PATH
export LD_LIBRARY_PATH=/home/alexzh/gr_alex/gnuradio/build/volk/lib:/home/alexzh/gr_alex/gnuradio/build/gruel/src/lib:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib:/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/tests:$LD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH
gr_core_test_all 
