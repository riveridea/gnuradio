
/*
 * This file was automatically generated using swig_doc.py.
 * 
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr_add_cc "output = sum (input_0, input_1, ...)

Add across all input streams."





%feature("docstring") gr_make_add_cc "output = sum (input_0, input_1, ...)

Add across all input streams."

%feature("docstring") gr_add_const_cc "output = input + constant"









%feature("docstring") gr_make_add_const_cc "output = input + constant"

%feature("docstring") gr_add_const_ff "output = input + constant"









%feature("docstring") gr_make_add_const_ff "output = input + constant"

%feature("docstring") gr_add_const_ii "output = input + constant"









%feature("docstring") gr_make_add_const_ii "output = input + constant"

%feature("docstring") gr_add_const_sf "output = input + constant"









%feature("docstring") gr_make_add_const_sf "output = input + constant"

%feature("docstring") gr_add_const_ss "output = input + constant"









%feature("docstring") gr_make_add_const_ss "output = input + constant"

%feature("docstring") gr_add_const_vcc "output vector = input vector + constant vector"









%feature("docstring") gr_make_add_const_vcc "output vector = input vector + constant vector"

%feature("docstring") gr_add_const_vff "output vector = input vector + constant vector"









%feature("docstring") gr_make_add_const_vff "output vector = input vector + constant vector"

%feature("docstring") gr_add_const_vii "output vector = input vector + constant vector"









%feature("docstring") gr_make_add_const_vii "output vector = input vector + constant vector"

%feature("docstring") gr_add_const_vss "output vector = input vector + constant vector"









%feature("docstring") gr_make_add_const_vss "output vector = input vector + constant vector"

%feature("docstring") gr_add_ii "output = sum (input_0, input_1, ...)

Add across all input streams."





%feature("docstring") gr_make_add_ii "output = sum (input_0, input_1, ...)

Add across all input streams."

%feature("docstring") gr_add_ss "output = sum (input_0, input_1, ...)

Add across all input streams."





%feature("docstring") gr_make_add_ss "output = sum (input_0, input_1, ...)

Add across all input streams."

%feature("docstring") gr_and_bb "output = input_0 & input_1 & , ... & input_N)

bitwise boolean and across all input streams."





%feature("docstring") gr_make_and_bb "output = input_0 & input_1 & , ... & input_N)

bitwise boolean and across all input streams."

%feature("docstring") gr_and_const_bb "output_N = input_N & value

bitwise boolean and of const to the data stream."









%feature("docstring") gr_make_and_const_bb "output_N = input_N & value

bitwise boolean and of const to the data stream."

%feature("docstring") gr_and_const_ii "output_N = input_N & value

bitwise boolean and of const to the data stream."









%feature("docstring") gr_make_and_const_ii "output_N = input_N & value

bitwise boolean and of const to the data stream."

%feature("docstring") gr_and_const_ss "output_N = input_N & value

bitwise boolean and of const to the data stream."









%feature("docstring") gr_make_and_const_ss "output_N = input_N & value

bitwise boolean and of const to the data stream."

%feature("docstring") gr_and_ii "output = input_0 & input_1 & , ... & input_N)

bitwise boolean and across all input streams."





%feature("docstring") gr_make_and_ii "output = input_0 & input_1 & , ... & input_N)

bitwise boolean and across all input streams."

%feature("docstring") gr_and_ss "output = input_0 & input_1 & , ... & input_N)

bitwise boolean and across all input streams."





%feature("docstring") gr_make_and_ss "output = input_0 & input_1 & , ... & input_N)

bitwise boolean and across all input streams."

























%feature("docstring") gr_chunks_to_symbols_bc "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex onstellation points.in  dimensions ( = 1 by default)

input: stream of unsigned char; output: stream of gr_complex.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."











%feature("docstring") gr_make_chunks_to_symbols_bc "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex onstellation points.in  dimensions ( = 1 by default)

input: stream of unsigned char; output: stream of gr_complex.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") gr_chunks_to_symbols_bf "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex onstellation points.in  dimensions ( = 1 by default)

input: stream of unsigned char; output: stream of float.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."











%feature("docstring") gr_make_chunks_to_symbols_bf "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex onstellation points.in  dimensions ( = 1 by default)

input: stream of unsigned char; output: stream of float.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") gr_chunks_to_symbols_ic "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex onstellation points.in  dimensions ( = 1 by default)

input: stream of int; output: stream of gr_complex.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."











%feature("docstring") gr_make_chunks_to_symbols_ic "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex onstellation points.in  dimensions ( = 1 by default)

input: stream of int; output: stream of gr_complex.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") gr_chunks_to_symbols_if "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex onstellation points.in  dimensions ( = 1 by default)

input: stream of int; output: stream of float.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."











%feature("docstring") gr_make_chunks_to_symbols_if "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex onstellation points.in  dimensions ( = 1 by default)

input: stream of int; output: stream of float.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") gr_chunks_to_symbols_sc "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex onstellation points.in  dimensions ( = 1 by default)

input: stream of short; output: stream of gr_complex.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."











%feature("docstring") gr_make_chunks_to_symbols_sc "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex onstellation points.in  dimensions ( = 1 by default)

input: stream of short; output: stream of gr_complex.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") gr_chunks_to_symbols_sf "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex onstellation points.in  dimensions ( = 1 by default)

input: stream of short; output: stream of float.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."











%feature("docstring") gr_make_chunks_to_symbols_sf "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex onstellation points.in  dimensions ( = 1 by default)

input: stream of short; output: stream of float.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") gr_divide_cc "output = input_0 / input_1 / input_x ...)

Divide across all input streams."





%feature("docstring") gr_make_divide_cc "output = input_0 / input_1 / input_x ...)

Divide across all input streams."

%feature("docstring") gr_divide_ff "output = input_0 / input_1 / input_x ...)

Divide across all input streams."





%feature("docstring") gr_make_divide_ff "output = input_0 / input_1 / input_x ...)

Divide across all input streams."

%feature("docstring") gr_divide_ii "output = input_0 / input_1 / input_x ...)

Divide across all input streams."





%feature("docstring") gr_make_divide_ii "output = input_0 / input_1 / input_x ...)

Divide across all input streams."

%feature("docstring") gr_divide_ss "output = input_0 / input_1 / input_x ...)

Divide across all input streams."





%feature("docstring") gr_make_divide_ss "output = input_0 / input_1 / input_x ...)

Divide across all input streams."

%feature("docstring") gr_integrate_cc "output = sum(input[0]...input[n])

Integrate successive samples in input stream and decimate"







%feature("docstring") gr_make_integrate_cc "output = sum(input[0]...input[n])

Integrate successive samples in input stream and decimate"

%feature("docstring") gr_integrate_ff "output = sum(input[0]...input[n])

Integrate successive samples in input stream and decimate"







%feature("docstring") gr_make_integrate_ff "output = sum(input[0]...input[n])

Integrate successive samples in input stream and decimate"

%feature("docstring") gr_integrate_ii "output = sum(input[0]...input[n])

Integrate successive samples in input stream and decimate"







%feature("docstring") gr_make_integrate_ii "output = sum(input[0]...input[n])

Integrate successive samples in input stream and decimate"

%feature("docstring") gr_integrate_ss "output = sum(input[0]...input[n])

Integrate successive samples in input stream and decimate"







%feature("docstring") gr_make_integrate_ss "output = sum(input[0]...input[n])

Integrate successive samples in input stream and decimate"

























%feature("docstring") gr_moving_average_cc "output is the moving sum of the last N samples, scaled by the scale factor

max_iter limits how long we go without flushing the accumulator This is necessary to avoid numerical instability for float and complex."













%feature("docstring") gr_make_moving_average_cc "output is the moving sum of the last N samples, scaled by the scale factor

max_iter limits how long we go without flushing the accumulator This is necessary to avoid numerical instability for float and complex."

%feature("docstring") gr_moving_average_ff "output is the moving sum of the last N samples, scaled by the scale factor

max_iter limits how long we go without flushing the accumulator This is necessary to avoid numerical instability for float and complex."













%feature("docstring") gr_make_moving_average_ff "output is the moving sum of the last N samples, scaled by the scale factor

max_iter limits how long we go without flushing the accumulator This is necessary to avoid numerical instability for float and complex."

%feature("docstring") gr_moving_average_ii "output is the moving sum of the last N samples, scaled by the scale factor

max_iter limits how long we go without flushing the accumulator This is necessary to avoid numerical instability for float and complex."













%feature("docstring") gr_make_moving_average_ii "output is the moving sum of the last N samples, scaled by the scale factor

max_iter limits how long we go without flushing the accumulator This is necessary to avoid numerical instability for float and complex."

%feature("docstring") gr_moving_average_ss "output is the moving sum of the last N samples, scaled by the scale factor

max_iter limits how long we go without flushing the accumulator This is necessary to avoid numerical instability for float and complex."













%feature("docstring") gr_make_moving_average_ss "output is the moving sum of the last N samples, scaled by the scale factor

max_iter limits how long we go without flushing the accumulator This is necessary to avoid numerical instability for float and complex."

%feature("docstring") gr_multiply_const_ii "output = input * constant"









%feature("docstring") gr_make_multiply_const_ii "output = input * constant"

%feature("docstring") gr_multiply_const_ss "output = input * constant"









%feature("docstring") gr_make_multiply_const_ss "output = input * constant"

%feature("docstring") gr_multiply_const_vcc "output vector = input vector * constant vector (element-wise)"









%feature("docstring") gr_make_multiply_const_vcc "output vector = input vector * constant vector (element-wise)"

%feature("docstring") gr_multiply_const_vff "output vector = input vector * constant vector (element-wise)"









%feature("docstring") gr_make_multiply_const_vff "output vector = input vector * constant vector (element-wise)"

%feature("docstring") gr_multiply_const_vii "output vector = input vector * constant vector (element-wise)"









%feature("docstring") gr_make_multiply_const_vii "output vector = input vector * constant vector (element-wise)"

%feature("docstring") gr_multiply_const_vss "output vector = input vector * constant vector (element-wise)"









%feature("docstring") gr_make_multiply_const_vss "output vector = input vector * constant vector (element-wise)"

%feature("docstring") gr_multiply_ii "output = prod (input_0, input_1, ...)

Multiply across all input streams."





%feature("docstring") gr_make_multiply_ii "output = prod (input_0, input_1, ...)

Multiply across all input streams."

%feature("docstring") gr_multiply_ss "output = prod (input_0, input_1, ...)

Multiply across all input streams."





%feature("docstring") gr_make_multiply_ss "output = prod (input_0, input_1, ...)

Multiply across all input streams."

%feature("docstring") gr_mute_cc "output = input or zero if muted."









%feature("docstring") gr_make_mute_cc "output = input or zero if muted."

%feature("docstring") gr_mute_ff "output = input or zero if muted."









%feature("docstring") gr_make_mute_ff "output = input or zero if muted."

%feature("docstring") gr_mute_ii "output = input or zero if muted."









%feature("docstring") gr_make_mute_ii "output = input or zero if muted."

%feature("docstring") gr_mute_ss "output = input or zero if muted."









%feature("docstring") gr_make_mute_ss "output = input or zero if muted."

%feature("docstring") gr_noise_source_c "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Make a noise source.

Args:
    type : the random distribution to use (see gr_noise_type.h)
    ampl : a scaling factor for the output
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."













%feature("docstring") gr_make_noise_source_c "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Make a noise source.

Args:
    type : the random distribution to use (see gr_noise_type.h)
    ampl : a scaling factor for the output
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."

%feature("docstring") gr_noise_source_f "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Make a noise source.

Args:
    type : the random distribution to use (see gr_noise_type.h)
    ampl : a scaling factor for the output
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."













%feature("docstring") gr_make_noise_source_f "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Make a noise source.

Args:
    type : the random distribution to use (see gr_noise_type.h)
    ampl : a scaling factor for the output
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."

%feature("docstring") gr_noise_source_i "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Make a noise source.

Args:
    type : the random distribution to use (see gr_noise_type.h)
    ampl : a scaling factor for the output
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."













%feature("docstring") gr_make_noise_source_i "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Make a noise source.

Args:
    type : the random distribution to use (see gr_noise_type.h)
    ampl : a scaling factor for the output
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."

%feature("docstring") gr_noise_source_s "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Make a noise source.

Args:
    type : the random distribution to use (see gr_noise_type.h)
    ampl : a scaling factor for the output
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."













%feature("docstring") gr_make_noise_source_s "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Make a noise source.

Args:
    type : the random distribution to use (see gr_noise_type.h)
    ampl : a scaling factor for the output
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."

%feature("docstring") gr_not_bb "output = ~input_0

bitwise boolean not across input stream."





%feature("docstring") gr_make_not_bb "output = ~input_0

bitwise boolean not across input stream."

%feature("docstring") gr_not_ii "output = ~input_0

bitwise boolean not across input stream."





%feature("docstring") gr_make_not_ii "output = ~input_0

bitwise boolean not across input stream."

%feature("docstring") gr_not_ss "output = ~input_0

bitwise boolean not across input stream."





%feature("docstring") gr_make_not_ss "output = ~input_0

bitwise boolean not across input stream."

%feature("docstring") gr_or_bb "output = input_0 | input_1 | , ... | input_N)

bitwise boolean or across all input streams."





%feature("docstring") gr_make_or_bb "output = input_0 | input_1 | , ... | input_N)

bitwise boolean or across all input streams."

%feature("docstring") gr_or_ii "output = input_0 | input_1 | , ... | input_N)

bitwise boolean or across all input streams."





%feature("docstring") gr_make_or_ii "output = input_0 | input_1 | , ... | input_N)

bitwise boolean or across all input streams."

%feature("docstring") gr_or_ss "output = input_0 | input_1 | , ... | input_N)

bitwise boolean or across all input streams."





%feature("docstring") gr_make_or_ss "output = input_0 | input_1 | , ... | input_N)

bitwise boolean or across all input streams."

%feature("docstring") gr_packed_to_unpacked_bb "Convert a stream of packed bytes or shorts to stream of unpacked bytes or shorts.

input: stream of unsigned char; output: stream of unsigned char.

This is the inverse of gr_unpacked_to_packed_XX.

The bits in the bytes or shorts input stream are grouped into chunks of  bits and each resulting chunk is written right- justified to the output stream of bytes or shorts. All b or 16 bits of the each input bytes or short are processed. The right thing is done if bits_per_chunk is not a power of two.

The combination of gr_packed_to_unpacked_XX_ followed by gr_chunks_to_symbols_Xf or gr_chunks_to_symbols_Xc handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."









%feature("docstring") gr_make_packed_to_unpacked_bb "Convert a stream of packed bytes or shorts to stream of unpacked bytes or shorts.

input: stream of unsigned char; output: stream of unsigned char.

This is the inverse of gr_unpacked_to_packed_XX.

The bits in the bytes or shorts input stream are grouped into chunks of  bits and each resulting chunk is written right- justified to the output stream of bytes or shorts. All b or 16 bits of the each input bytes or short are processed. The right thing is done if bits_per_chunk is not a power of two.

The combination of gr_packed_to_unpacked_XX_ followed by gr_chunks_to_symbols_Xf or gr_chunks_to_symbols_Xc handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") gr_packed_to_unpacked_ii "Convert a stream of packed bytes or shorts to stream of unpacked bytes or shorts.

input: stream of int; output: stream of int.

This is the inverse of gr_unpacked_to_packed_XX.

The bits in the bytes or shorts input stream are grouped into chunks of  bits and each resulting chunk is written right- justified to the output stream of bytes or shorts. All b or 16 bits of the each input bytes or short are processed. The right thing is done if bits_per_chunk is not a power of two.

The combination of gr_packed_to_unpacked_XX_ followed by gr_chunks_to_symbols_Xf or gr_chunks_to_symbols_Xc handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."









%feature("docstring") gr_make_packed_to_unpacked_ii "Convert a stream of packed bytes or shorts to stream of unpacked bytes or shorts.

input: stream of int; output: stream of int.

This is the inverse of gr_unpacked_to_packed_XX.

The bits in the bytes or shorts input stream are grouped into chunks of  bits and each resulting chunk is written right- justified to the output stream of bytes or shorts. All b or 16 bits of the each input bytes or short are processed. The right thing is done if bits_per_chunk is not a power of two.

The combination of gr_packed_to_unpacked_XX_ followed by gr_chunks_to_symbols_Xf or gr_chunks_to_symbols_Xc handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") gr_packed_to_unpacked_ss "Convert a stream of packed bytes or shorts to stream of unpacked bytes or shorts.

input: stream of short; output: stream of short.

This is the inverse of gr_unpacked_to_packed_XX.

The bits in the bytes or shorts input stream are grouped into chunks of  bits and each resulting chunk is written right- justified to the output stream of bytes or shorts. All b or 16 bits of the each input bytes or short are processed. The right thing is done if bits_per_chunk is not a power of two.

The combination of gr_packed_to_unpacked_XX_ followed by gr_chunks_to_symbols_Xf or gr_chunks_to_symbols_Xc handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."









%feature("docstring") gr_make_packed_to_unpacked_ss "Convert a stream of packed bytes or shorts to stream of unpacked bytes or shorts.

input: stream of short; output: stream of short.

This is the inverse of gr_unpacked_to_packed_XX.

The bits in the bytes or shorts input stream are grouped into chunks of  bits and each resulting chunk is written right- justified to the output stream of bytes or shorts. All b or 16 bits of the each input bytes or short are processed. The right thing is done if bits_per_chunk is not a power of two.

The combination of gr_packed_to_unpacked_XX_ followed by gr_chunks_to_symbols_Xf or gr_chunks_to_symbols_Xc handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") gr_peak_detector_fb "Detect the peak of a signal

If a peak is detected, this block outputs a 1, or it outputs 0's.

Args:
    threshold_factor_rise : The threshold factor determins when a peak has started. An average of the signal is calculated and when the value of the signal goes over threshold_factor_rise*average, we start looking for a peak.
    threshold_factor_fall : The threshold factor determins when a peak has ended. An average of the signal is calculated and when the value of the signal goes bellow threshold_factor_fall*average, we stop looking for a peak.
    look_ahead : The look-ahead value is used when the threshold is found to look if there another peak within this step range. If there is a larger value, we set that as the peak and look ahead again. This is continued until the highest point is found with This look-ahead range.
    alpha : The gain value of a moving average filter"



%feature("docstring") gr_peak_detector_fb::set_threshold_factor_rise "Set the threshold factor value for the rise time."

%feature("docstring") gr_peak_detector_fb::set_threshold_factor_fall "Set the threshold factor value for the fall time."

%feature("docstring") gr_peak_detector_fb::set_look_ahead "Set the look-ahead factor."

%feature("docstring") gr_peak_detector_fb::set_alpha "Set the running average alpha."

%feature("docstring") gr_peak_detector_fb::threshold_factor_rise "Get the threshold factor value for the rise time."

%feature("docstring") gr_peak_detector_fb::threshold_factor_fall "Get the threshold factor value for the fall time."

%feature("docstring") gr_peak_detector_fb::look_ahead "Get the look-ahead factor value."

%feature("docstring") gr_peak_detector_fb::alpha "Get the alpha value of the running average."



%feature("docstring") gr_make_peak_detector_fb "Detect the peak of a signal

If a peak is detected, this block outputs a 1, or it outputs 0's.

Args:
    threshold_factor_rise : The threshold factor determins when a peak has started. An average of the signal is calculated and when the value of the signal goes over threshold_factor_rise*average, we start looking for a peak.
    threshold_factor_fall : The threshold factor determins when a peak has ended. An average of the signal is calculated and when the value of the signal goes bellow threshold_factor_fall*average, we stop looking for a peak.
    look_ahead : The look-ahead value is used when the threshold is found to look if there another peak within this step range. If there is a larger value, we set that as the peak and look ahead again. This is continued until the highest point is found with This look-ahead range.
    alpha : The gain value of a moving average filter"

%feature("docstring") gr_peak_detector_ib "Detect the peak of a signal

If a peak is detected, this block outputs a 1, or it outputs 0's.

Args:
    threshold_factor_rise : The threshold factor determins when a peak has started. An average of the signal is calculated and when the value of the signal goes over threshold_factor_rise*average, we start looking for a peak.
    threshold_factor_fall : The threshold factor determins when a peak has ended. An average of the signal is calculated and when the value of the signal goes bellow threshold_factor_fall*average, we stop looking for a peak.
    look_ahead : The look-ahead value is used when the threshold is found to look if there another peak within this step range. If there is a larger value, we set that as the peak and look ahead again. This is continued until the highest point is found with This look-ahead range.
    alpha : The gain value of a moving average filter"



%feature("docstring") gr_peak_detector_ib::set_threshold_factor_rise "Set the threshold factor value for the rise time."

%feature("docstring") gr_peak_detector_ib::set_threshold_factor_fall "Set the threshold factor value for the fall time."

%feature("docstring") gr_peak_detector_ib::set_look_ahead "Set the look-ahead factor."

%feature("docstring") gr_peak_detector_ib::set_alpha "Set the running average alpha."

%feature("docstring") gr_peak_detector_ib::threshold_factor_rise "Get the threshold factor value for the rise time."

%feature("docstring") gr_peak_detector_ib::threshold_factor_fall "Get the threshold factor value for the fall time."

%feature("docstring") gr_peak_detector_ib::look_ahead "Get the look-ahead factor value."

%feature("docstring") gr_peak_detector_ib::alpha "Get the alpha value of the running average."



%feature("docstring") gr_make_peak_detector_ib "Detect the peak of a signal

If a peak is detected, this block outputs a 1, or it outputs 0's.

Args:
    threshold_factor_rise : The threshold factor determins when a peak has started. An average of the signal is calculated and when the value of the signal goes over threshold_factor_rise*average, we start looking for a peak.
    threshold_factor_fall : The threshold factor determins when a peak has ended. An average of the signal is calculated and when the value of the signal goes bellow threshold_factor_fall*average, we stop looking for a peak.
    look_ahead : The look-ahead value is used when the threshold is found to look if there another peak within this step range. If there is a larger value, we set that as the peak and look ahead again. This is continued until the highest point is found with This look-ahead range.
    alpha : The gain value of a moving average filter"

%feature("docstring") gr_peak_detector_sb "Detect the peak of a signal

If a peak is detected, this block outputs a 1, or it outputs 0's.

Args:
    threshold_factor_rise : The threshold factor determins when a peak has started. An average of the signal is calculated and when the value of the signal goes over threshold_factor_rise*average, we start looking for a peak.
    threshold_factor_fall : The threshold factor determins when a peak has ended. An average of the signal is calculated and when the value of the signal goes bellow threshold_factor_fall*average, we stop looking for a peak.
    look_ahead : The look-ahead value is used when the threshold is found to look if there another peak within this step range. If there is a larger value, we set that as the peak and look ahead again. This is continued until the highest point is found with This look-ahead range.
    alpha : The gain value of a moving average filter"



%feature("docstring") gr_peak_detector_sb::set_threshold_factor_rise "Set the threshold factor value for the rise time."

%feature("docstring") gr_peak_detector_sb::set_threshold_factor_fall "Set the threshold factor value for the fall time."

%feature("docstring") gr_peak_detector_sb::set_look_ahead "Set the look-ahead factor."

%feature("docstring") gr_peak_detector_sb::set_alpha "Set the running average alpha."

%feature("docstring") gr_peak_detector_sb::threshold_factor_rise "Get the threshold factor value for the rise time."

%feature("docstring") gr_peak_detector_sb::threshold_factor_fall "Get the threshold factor value for the fall time."

%feature("docstring") gr_peak_detector_sb::look_ahead "Get the look-ahead factor value."

%feature("docstring") gr_peak_detector_sb::alpha "Get the alpha value of the running average."



%feature("docstring") gr_make_peak_detector_sb "Detect the peak of a signal

If a peak is detected, this block outputs a 1, or it outputs 0's.

Args:
    threshold_factor_rise : The threshold factor determins when a peak has started. An average of the signal is calculated and when the value of the signal goes over threshold_factor_rise*average, we start looking for a peak.
    threshold_factor_fall : The threshold factor determins when a peak has ended. An average of the signal is calculated and when the value of the signal goes bellow threshold_factor_fall*average, we stop looking for a peak.
    look_ahead : The look-ahead value is used when the threshold is found to look if there another peak within this step range. If there is a larger value, we set that as the peak and look ahead again. This is continued until the highest point is found with This look-ahead range.
    alpha : The gain value of a moving average filter"

%feature("docstring") gr_probe_signal_b "Sink that allows a sample to be grabbed from Python."









%feature("docstring") gr_make_probe_signal_b "Sink that allows a sample to be grabbed from Python."

%feature("docstring") gr_probe_signal_c "Sink that allows a sample to be grabbed from Python."









%feature("docstring") gr_make_probe_signal_c "Sink that allows a sample to be grabbed from Python."

%feature("docstring") gr_probe_signal_f "Sink that allows a sample to be grabbed from Python."









%feature("docstring") gr_make_probe_signal_f "Sink that allows a sample to be grabbed from Python."

%feature("docstring") gr_probe_signal_i "Sink that allows a sample to be grabbed from Python."









%feature("docstring") gr_make_probe_signal_i "Sink that allows a sample to be grabbed from Python."

%feature("docstring") gr_probe_signal_s "Sink that allows a sample to be grabbed from Python."









%feature("docstring") gr_make_probe_signal_s "Sink that allows a sample to be grabbed from Python."

%feature("docstring") gr_probe_signal_vb "Sink that allows a sample to be grabbed from Python."









%feature("docstring") gr_make_probe_signal_vb "Sink that allows a sample to be grabbed from Python."

%feature("docstring") gr_probe_signal_vc "Sink that allows a sample to be grabbed from Python."









%feature("docstring") gr_make_probe_signal_vc "Sink that allows a sample to be grabbed from Python."

%feature("docstring") gr_probe_signal_vf "Sink that allows a sample to be grabbed from Python."









%feature("docstring") gr_make_probe_signal_vf "Sink that allows a sample to be grabbed from Python."

%feature("docstring") gr_probe_signal_vi "Sink that allows a sample to be grabbed from Python."









%feature("docstring") gr_make_probe_signal_vi "Sink that allows a sample to be grabbed from Python."

%feature("docstring") gr_probe_signal_vs "Sink that allows a sample to be grabbed from Python."









%feature("docstring") gr_make_probe_signal_vs "Sink that allows a sample to be grabbed from Python."

%feature("docstring") gr_sample_and_hold_bb "sample and hold circuit

Samples the data stream (input stream 0) and holds the value if the control signal is 1 (intput stream 1)."





%feature("docstring") gr_make_sample_and_hold_bb "sample and hold circuit

Samples the data stream (input stream 0) and holds the value if the control signal is 1 (intput stream 1)."

%feature("docstring") gr_sample_and_hold_ff "sample and hold circuit

Samples the data stream (input stream 0) and holds the value if the control signal is 1 (intput stream 1)."





%feature("docstring") gr_make_sample_and_hold_ff "sample and hold circuit

Samples the data stream (input stream 0) and holds the value if the control signal is 1 (intput stream 1)."

%feature("docstring") gr_sample_and_hold_ii "sample and hold circuit

Samples the data stream (input stream 0) and holds the value if the control signal is 1 (intput stream 1)."





%feature("docstring") gr_make_sample_and_hold_ii "sample and hold circuit

Samples the data stream (input stream 0) and holds the value if the control signal is 1 (intput stream 1)."

%feature("docstring") gr_sample_and_hold_ss "sample and hold circuit

Samples the data stream (input stream 0) and holds the value if the control signal is 1 (intput stream 1)."





%feature("docstring") gr_make_sample_and_hold_ss "sample and hold circuit

Samples the data stream (input stream 0) and holds the value if the control signal is 1 (intput stream 1)."

%feature("docstring") gr_sig_source_c "signal generator with gr_complex output."

























%feature("docstring") gr_make_sig_source_c "signal generator with gr_complex output."

%feature("docstring") gr_sig_source_f "signal generator with float output."

























%feature("docstring") gr_make_sig_source_f "signal generator with float output."

%feature("docstring") gr_sig_source_i "signal generator with int output."

























%feature("docstring") gr_make_sig_source_i "signal generator with int output."

%feature("docstring") gr_sig_source_s "signal generator with short output."

























%feature("docstring") gr_make_sig_source_s "signal generator with short output."

%feature("docstring") gr_sub_cc "output = input_0 - input_1 - ...)

Subtract across all input streams."





%feature("docstring") gr_make_sub_cc "output = input_0 - input_1 - ...)

Subtract across all input streams."

%feature("docstring") gr_sub_ff "output = input_0 - input_1 - ...)

Subtract across all input streams."





%feature("docstring") gr_make_sub_ff "output = input_0 - input_1 - ...)

Subtract across all input streams."

%feature("docstring") gr_sub_ii "output = input_0 - input_1 - ...)

Subtract across all input streams."





%feature("docstring") gr_make_sub_ii "output = input_0 - input_1 - ...)

Subtract across all input streams."

%feature("docstring") gr_sub_ss "output = input_0 - input_1 - ...)

Subtract across all input streams."





%feature("docstring") gr_make_sub_ss "output = input_0 - input_1 - ...)

Subtract across all input streams."

%feature("docstring") gr_unpacked_to_packed_bb "Convert a stream of unpacked bytes or shorts into a stream of packed bytes or shorts.

input: stream of unsigned char; output: stream of unsigned char.

This is the inverse of gr_packed_to_unpacked_XX.

The low  bits are extracted from each input byte or short. These bits are then packed densely into the output bytes or shorts, such that all 8 or 16 bits of the output bytes or shorts are filled with valid input bits. The right thing is done if bits_per_chunk is not a power of two.

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_Xf or gr_chunks_to_symbols_Xc handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."









%feature("docstring") gr_make_unpacked_to_packed_bb "Convert a stream of unpacked bytes or shorts into a stream of packed bytes or shorts.

input: stream of unsigned char; output: stream of unsigned char.

This is the inverse of gr_packed_to_unpacked_XX.

The low  bits are extracted from each input byte or short. These bits are then packed densely into the output bytes or shorts, such that all 8 or 16 bits of the output bytes or shorts are filled with valid input bits. The right thing is done if bits_per_chunk is not a power of two.

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_Xf or gr_chunks_to_symbols_Xc handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") gr_unpacked_to_packed_ii "Convert a stream of unpacked bytes or shorts into a stream of packed bytes or shorts.

input: stream of int; output: stream of int.

This is the inverse of gr_packed_to_unpacked_XX.

The low  bits are extracted from each input byte or short. These bits are then packed densely into the output bytes or shorts, such that all 8 or 16 bits of the output bytes or shorts are filled with valid input bits. The right thing is done if bits_per_chunk is not a power of two.

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_Xf or gr_chunks_to_symbols_Xc handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."









%feature("docstring") gr_make_unpacked_to_packed_ii "Convert a stream of unpacked bytes or shorts into a stream of packed bytes or shorts.

input: stream of int; output: stream of int.

This is the inverse of gr_packed_to_unpacked_XX.

The low  bits are extracted from each input byte or short. These bits are then packed densely into the output bytes or shorts, such that all 8 or 16 bits of the output bytes or shorts are filled with valid input bits. The right thing is done if bits_per_chunk is not a power of two.

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_Xf or gr_chunks_to_symbols_Xc handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") gr_unpacked_to_packed_ss "Convert a stream of unpacked bytes or shorts into a stream of packed bytes or shorts.

input: stream of short; output: stream of short.

This is the inverse of gr_packed_to_unpacked_XX.

The low  bits are extracted from each input byte or short. These bits are then packed densely into the output bytes or shorts, such that all 8 or 16 bits of the output bytes or shorts are filled with valid input bits. The right thing is done if bits_per_chunk is not a power of two.

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_Xf or gr_chunks_to_symbols_Xc handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."









%feature("docstring") gr_make_unpacked_to_packed_ss "Convert a stream of unpacked bytes or shorts into a stream of packed bytes or shorts.

input: stream of short; output: stream of short.

This is the inverse of gr_packed_to_unpacked_XX.

The low  bits are extracted from each input byte or short. These bits are then packed densely into the output bytes or shorts, such that all 8 or 16 bits of the output bytes or shorts are filled with valid input bits. The right thing is done if bits_per_chunk is not a power of two.

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_Xf or gr_chunks_to_symbols_Xc handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") gr_vector_insert_b "source of unsigned char's that gets its data from a vector"









%feature("docstring") gr_make_vector_insert_b "source of unsigned char's that gets its data from a vector"

%feature("docstring") gr_vector_sink_b "unsigned char sink that writes to a vector"











%feature("docstring") gr_make_vector_sink_b "unsigned char sink that writes to a vector"

%feature("docstring") gr_vector_sink_c "gr_complex sink that writes to a vector"











%feature("docstring") gr_make_vector_sink_c "gr_complex sink that writes to a vector"

%feature("docstring") gr_vector_sink_f "float sink that writes to a vector"











%feature("docstring") gr_make_vector_sink_f "float sink that writes to a vector"

%feature("docstring") gr_vector_sink_i "int sink that writes to a vector"











%feature("docstring") gr_make_vector_sink_i "int sink that writes to a vector"

%feature("docstring") gr_vector_sink_s "short sink that writes to a vector"











%feature("docstring") gr_make_vector_sink_s "short sink that writes to a vector"

%feature("docstring") gr_vector_source_b "source of unsigned char's that gets its data from a vector"









%feature("docstring") gr_make_vector_source_b "source of unsigned char's that gets its data from a vector"

%feature("docstring") gr_vector_source_c "source of gr_complex's that gets its data from a vector"









%feature("docstring") gr_make_vector_source_c "source of gr_complex's that gets its data from a vector"

%feature("docstring") gr_vector_source_f "source of float's that gets its data from a vector"









%feature("docstring") gr_make_vector_source_f "source of float's that gets its data from a vector"

%feature("docstring") gr_vector_source_i "source of int's that gets its data from a vector"









%feature("docstring") gr_make_vector_source_i "source of int's that gets its data from a vector"

%feature("docstring") gr_vector_source_s "source of short's that gets its data from a vector"









%feature("docstring") gr_make_vector_source_s "source of short's that gets its data from a vector"

%feature("docstring") gr_xor_bb "output = input_0 ^ input_1 ^ , ... ^ input_N)

bitwise boolean xor across all input streams."





%feature("docstring") gr_make_xor_bb "output = input_0 ^ input_1 ^ , ... ^ input_N)

bitwise boolean xor across all input streams."

%feature("docstring") gr_xor_ii "output = input_0 ^ input_1 ^ , ... ^ input_N)

bitwise boolean xor across all input streams."





%feature("docstring") gr_make_xor_ii "output = input_0 ^ input_1 ^ , ... ^ input_N)

bitwise boolean xor across all input streams."

%feature("docstring") gr_xor_ss "output = input_0 ^ input_1 ^ , ... ^ input_N)

bitwise boolean xor across all input streams."





%feature("docstring") gr_make_xor_ss "output = input_0 ^ input_1 ^ , ... ^ input_N)

bitwise boolean xor across all input streams."