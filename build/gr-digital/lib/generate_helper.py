
#!/usr/bin/python

import sys, os, re
sys.path.append('/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/python')
os.environ['srcdir'] = '/home/alexzh/gr_alex/gnuradio/gr-digital/lib'
os.chdir('/home/alexzh/gr_alex/gnuradio/build/gr-digital/lib')

if __name__ == '__main__':
    import build_utils
    root, inp = sys.argv[1:3]
    for sig in sys.argv[3:]:
        name = re.sub ('X+', sig, root)
        d = build_utils.standard_dict(name, sig, 'digital')
        build_utils.expand_template(d, inp)

