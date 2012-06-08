
/*
 * This file was automatically generated using swig_doc.py.
 * 
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr::fft::fft_vcc::make "Compute forward or reverse FFT. complex vector in / complex vector out.

Args:
    fft_size : 
    forward : 
    window : 
    shift : 
    nthreads : "

%feature("docstring") gr::fft::fft_vfc::make "Compute forward or reverse FFT. float vector in / complex vector out.

Args:
    fft_size : 
    forward : 
    window : 
    nthreads : "

%feature("docstring") gr::fft::goertzel_fc::make "Goertzel single-bin DFT calculation.

Args:
    rate : 
    len : 
    freq : "

%feature("docstring") gr::fft::fft_complex "FFT: complex in, complex out."













%feature("docstring") gr::fft::fft_complex::set_nthreads "Set the number of threads to use for caclulation."

%feature("docstring") gr::fft::fft_complex::nthreads "Get the number of threads being used by FFTW"

%feature("docstring") gr::fft::fft_complex::execute "compute FFT. The input comes from inbuf, the output is placed in outbuf."

%feature("docstring") gr::fft::fft_real_fwd "FFT: real in, complex out."













%feature("docstring") gr::fft::fft_real_fwd::set_nthreads "Set the number of threads to use for caclulation."

%feature("docstring") gr::fft::fft_real_fwd::nthreads "Get the number of threads being used by FFTW"

%feature("docstring") gr::fft::fft_real_fwd::execute "compute FFT. The input comes from inbuf, the output is placed in outbuf."

%feature("docstring") gr::fft::fft_real_rev "FFT: complex in, float out."













%feature("docstring") gr::fft::fft_real_rev::set_nthreads "Set the number of threads to use for caclulation."

%feature("docstring") gr::fft::fft_real_rev::nthreads "Get the number of threads being used by FFTW"

%feature("docstring") gr::fft::fft_real_rev::execute "compute FFT. The input comes from inbuf, the output is placed in outbuf."

%feature("docstring") gr::fft::goertzel "Implements Goertzel single-bin DFT calculation."













%feature("docstring") gr::fft::planner "Export reference to planner mutex for those apps that want to use FFTW w/o using the fft_impl_fftw* classes."

%feature("docstring") gr::fft::planner::mutex "Return reference to planner mutex"