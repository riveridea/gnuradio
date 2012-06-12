
/*
 * This file was automatically generated using swig_doc.py.
 * 
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") digital_additive_scrambler_bb "Scramble an input stream using an LFSR. This block works on the LSB only of the input data stream, i.e., on an \"unpacked binary\" stream, and produces the same format on its output.


The scrambler works by XORing the incoming bit stream by the output of the LFSR. Optionally, after 'count' bits have been processed, the shift register is reset to the seed value. This allows processing fixed length vectors of samples.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length
    count : Number of bits after which shift register is reset, 0=never"





%feature("docstring") digital_make_additive_scrambler_bb "Scramble an input stream using an LFSR. This block works on the LSB only of the input data stream, i.e., on an \"unpacked binary\" stream, and produces the same format on its output.


The scrambler works by XORing the incoming bit stream by the output of the LFSR. Optionally, after 'count' bits have been processed, the shift register is reset to the seed value. This allows processing fixed length vectors of samples.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length
    count : Number of bits after which shift register is reset, 0=never"

%feature("docstring") digital_binary_slicer_fb "slice float binary symbol outputting 1 bit output

x < 0 --> 0 x >= 0 --> 1"





%feature("docstring") digital_make_binary_slicer_fb "slice float binary symbol outputting 1 bit output

x < 0 --> 0 x >= 0 --> 1"

%feature("docstring") digital_bytes_to_syms "Convert stream of bytes to stream of +/- 1 symbols

input: stream of bytes; output: stream of float.

This block is deprecated.

The combination of gr_packed_to_unpacked_bb followed by gr_chunks_to_symbols_bf or gr_chunks_to_symbols_bc handles the general case of mapping from a stream of bytes into arbitrary float or complex symbols."





%feature("docstring") digital_make_bytes_to_syms "Convert stream of bytes to stream of +/- 1 symbols

input: stream of bytes; output: stream of float.

This block is deprecated.

The combination of gr_packed_to_unpacked_bb followed by gr_chunks_to_symbols_bf or gr_chunks_to_symbols_bc handles the general case of mapping from a stream of bytes into arbitrary float or complex symbols."

%feature("docstring") digital_chunks_to_symbols_bc "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex constellation points in D dimensions (D = 1 by default)

input: stream of unsigned char; output: stream of gr_complex.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."











%feature("docstring") digital_make_chunks_to_symbols_bc "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex constellation points in D dimensions (D = 1 by default)

input: stream of unsigned char; output: stream of gr_complex.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") digital_chunks_to_symbols_bf "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex constellation points in D dimensions (D = 1 by default)

input: stream of unsigned char; output: stream of float.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."











%feature("docstring") digital_make_chunks_to_symbols_bf "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex constellation points in D dimensions (D = 1 by default)

input: stream of unsigned char; output: stream of float.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") digital_chunks_to_symbols_ic "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex constellation points in D dimensions (D = 1 by default)

input: stream of int; output: stream of gr_complex.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."











%feature("docstring") digital_make_chunks_to_symbols_ic "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex constellation points in D dimensions (D = 1 by default)

input: stream of int; output: stream of gr_complex.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") digital_chunks_to_symbols_if "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex constellation points in D dimensions (D = 1 by default)

input: stream of int; output: stream of float.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."











%feature("docstring") digital_make_chunks_to_symbols_if "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex constellation points in D dimensions (D = 1 by default)

input: stream of int; output: stream of float.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") digital_chunks_to_symbols_sc "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex constellation points in D dimensions (D = 1 by default)

input: stream of short; output: stream of gr_complex.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."











%feature("docstring") digital_make_chunks_to_symbols_sc "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex constellation points in D dimensions (D = 1 by default)

input: stream of short; output: stream of gr_complex.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") digital_chunks_to_symbols_sf "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex constellation points in D dimensions (D = 1 by default)

input: stream of short; output: stream of float.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."











%feature("docstring") digital_make_chunks_to_symbols_sf "Map a stream of symbol indexes (unpacked bytes or shorts) to stream of float or complex constellation points in D dimensions (D = 1 by default)

input: stream of short; output: stream of float.

out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1

The combination of gr_packed_to_unpacked_XX followed by gr_chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols."

%feature("docstring") digital_clock_recovery_mm_cc "Mueller and M?ller (M&M) based clock recovery block with complex input, complex output.

This implements the Mueller and M?ller (M&M) discrete-time error-tracking synchronizer.

The complex version here is based on: Modified Mueller and Muller clock recovery circuit Based: G. R. Danesfahani, T.G. Jeans, \"Optimisation of modified Mueller
    and Muller algorithm,\" Electronics Letters, Vol. 31, no. 13, 22 June 1995, pp. 1032 - 1033."































%feature("docstring") digital_make_clock_recovery_mm_cc "Mueller and M?ller (M&M) based clock recovery block with complex input, complex output.

This implements the Mueller and M?ller (M&M) discrete-time error-tracking synchronizer.

The complex version here is based on: Modified Mueller and Muller clock recovery circuit Based: G. R. Danesfahani, T.G. Jeans, \"Optimisation of modified Mueller
    and Muller algorithm,\" Electronics Letters, Vol. 31, no. 13, 22 June 1995, pp. 1032 - 1033."

%feature("docstring") digital_clock_recovery_mm_ff "Mueller and M?ller (M&M) based clock recovery block with float input, float output.

This implements the Mueller and M?ller (M&M) discrete-time error-tracking synchronizer.

See \"Digital Communication Receivers: Synchronization, Channel
 Estimation and Signal Processing\" by Heinrich Meyr, Marc Moeneclaey, & Stefan Fechtel. ISBN 0-471-50275-8."

























%feature("docstring") digital_make_clock_recovery_mm_ff "Mueller and M?ller (M&M) based clock recovery block with float input, float output.

This implements the Mueller and M?ller (M&M) discrete-time error-tracking synchronizer.

See \"Digital Communication Receivers: Synchronization, Channel
 Estimation and Signal Processing\" by Heinrich Meyr, Marc Moeneclaey, & Stefan Fechtel. ISBN 0-471-50275-8."

%feature("docstring") digital_cma_equalizer_cc "Implements constant modulus adaptive filter on complex stream

The error value and tap update equations (for p=2) can be found in:

\"D. Godard, \"Self-Recovering Equalization and Carrier Tracking in Two-Dimensional Data Communication Systems,\" IEEE Transactions on
 Communications, Vol. 28, No. 11, pp. 1867 - 1875, 1980.\""















%feature("docstring") digital_make_cma_equalizer_cc "Implements constant modulus adaptive filter on complex stream

The error value and tap update equations (for p=2) can be found in:

\"D. Godard, \"Self-Recovering Equalization and Carrier Tracking in Two-Dimensional Data Communication Systems,\" IEEE Transactions on
 Communications, Vol. 28, No. 11, pp. 1867 - 1875, 1980.\""

%feature("docstring") digital_constellation_8psk "Digital constellation for 8PSK."



%feature("docstring") digital_constellation_8psk::decision_maker "Returns the constellation point that matches best."

%feature("docstring") digital_make_constellation_8psk "Digital constellation for 8PSK."

%feature("docstring") digital_constellation_bpsk "Digital constellation for BPSK."



%feature("docstring") digital_constellation_bpsk::decision_maker "Returns the constellation point that matches best."

%feature("docstring") digital_make_constellation_bpsk "Digital constellation for BPSK."

%feature("docstring") digital_constellation_calcdist "Calculate Euclidian distance for any constellation

Constellation which calculates the distance to each point in the constellation for decision making. Inefficient for large constellations."



%feature("docstring") digital_constellation_calcdist::decision_maker "Returns the constellation point that matches best."

%feature("docstring") digital_make_constellation_calcdist "Calculate Euclidian distance for any constellation

Constellation which calculates the distance to each point in the constellation for decision making. Inefficient for large constellations."

%feature("docstring") digital_constellation_decoder_cb "Constellation Decoder."







%feature("docstring") digital_make_constellation_decoder_cb "Constellation Decoder."

%feature("docstring") digital_constellation_dqpsk "Digital constellation for DQPSK."



%feature("docstring") digital_constellation_dqpsk::decision_maker "Returns the constellation point that matches best."

%feature("docstring") digital_make_constellation_dqpsk "Digital constellation for DQPSK."

%feature("docstring") digital_constellation_psk "digital_constellation_psk

Constellation space is divided into pie slices sectors.

Each slice is associated with the nearest constellation point.

Works well for PSK but nothing else.

Assumes that there is a constellation point at 1.x"







%feature("docstring") digital_make_constellation_psk "digital_constellation_psk

Constellation space is divided into pie slices sectors.

Each slice is associated with the nearest constellation point.

Works well for PSK but nothing else.

Assumes that there is a constellation point at 1.x"

%feature("docstring") digital_constellation_qpsk "Digital constellation for QPSK."



%feature("docstring") digital_constellation_qpsk::decision_maker "Returns the constellation point that matches best."

%feature("docstring") digital_make_constellation_qpsk "Digital constellation for QPSK."

%feature("docstring") digital_constellation_receiver_cb "This block takes care of receiving generic modulated signals through phase, frequency, and symbol synchronization.

This block takes care of receiving generic modulated signals through phase, frequency, and symbol synchronization. It performs carrier frequency and phase locking as well as symbol timing recovery.

The phase and frequency synchronization are based on a Costas loop that finds the error of the incoming signal point compared to its nearest constellation point. The frequency and phase of the NCO are updated according to this error.

The symbol synchronization is done using a modified Mueller and Muller circuit from the paper:

\"G. R. Danesfahani, T.G. Jeans, \"Optimisation of modified Mueller and Muller algorithm,\" Electronics Letters, Vol. 31, no. 13, 22
 June 1995, pp. 1032 - 1033.\"

This circuit interpolates the downconverted sample (using the NCO developed by the Costas loop) every mu samples, then it finds the sampling error based on this and the past symbols and the decision made on the samples. Like the phase error detector, there are optimized decision algorithms for BPSK and QPKS, but 8PSK uses another brute force computation against all possible symbols. The modifications to the M&M used here reduce self-noise."



%feature("docstring") digital_constellation_receiver_cb::digital_constellation_receiver_cb "Constructor to synchronize incoming M-PSK symbols.

The constructor also chooses which phase detector and decision maker to use in the work loop based on the value of M."



%feature("docstring") digital_constellation_receiver_cb::__GR_ATTR_ALIGNED "delay line plus some length for overflow protection"

%feature("docstring") digital_make_constellation_receiver_cb "This block takes care of receiving generic modulated signals through phase, frequency, and symbol synchronization.

This block takes care of receiving generic modulated signals through phase, frequency, and symbol synchronization. It performs carrier frequency and phase locking as well as symbol timing recovery.

The phase and frequency synchronization are based on a Costas loop that finds the error of the incoming signal point compared to its nearest constellation point. The frequency and phase of the NCO are updated according to this error.

The symbol synchronization is done using a modified Mueller and Muller circuit from the paper:

\"G. R. Danesfahani, T.G. Jeans, \"Optimisation of modified Mueller and Muller algorithm,\" Electronics Letters, Vol. 31, no. 13, 22
 June 1995, pp. 1032 - 1033.\"

This circuit interpolates the downconverted sample (using the NCO developed by the Costas loop) every mu samples, then it finds the sampling error based on this and the past symbols and the decision made on the samples. Like the phase error detector, there are optimized decision algorithms for BPSK and QPKS, but 8PSK uses another brute force computation against all possible symbols. The modifications to the M&M used here reduce self-noise."











%feature("docstring") digital_correlate_access_code_bb "Examine input for specified access code, one bit at a time.

input: stream of bits, 1 bit per input byte (data in LSB) output: stream of bits, 2 bits per output byte (data in LSB, flag in next higher bit)

Each output byte contains two valid bits, the data bit, and the flag bit. The LSB (bit 0) is the data bit, and is the original input data, delayed 64 bits. Bit 1 is the flag bit and is 1 if the corresponding data bit is the first data bit following the access code. Otherwise the flag bit is 0."









%feature("docstring") digital_make_correlate_access_code_bb "Examine input for specified access code, one bit at a time.

input: stream of bits, 1 bit per input byte (data in LSB) output: stream of bits, 2 bits per output byte (data in LSB, flag in next higher bit)

Each output byte contains two valid bits, the data bit, and the flag bit. The LSB (bit 0) is the data bit, and is the original input data, delayed 64 bits. Bit 1 is the flag bit and is 1 if the corresponding data bit is the first data bit following the access code. Otherwise the flag bit is 0."

%feature("docstring") digital_correlate_access_code_tag_bb "Examine input for specified access code, one bit at a time.

input: stream of bits, 1 bit per input byte (data in LSB) output: unaltered stream of bits (plus tags)

This block annotates the input stream with tags. The tags have key name [tag_name], specified in the constructor. Used for searching an input data stream for preambles, etc."









%feature("docstring") digital_make_correlate_access_code_tag_bb "Examine input for specified access code, one bit at a time.

input: stream of bits, 1 bit per input byte (data in LSB) output: unaltered stream of bits (plus tags)

This block annotates the input stream with tags. The tags have key name [tag_name], specified in the constructor. Used for searching an input data stream for preambles, etc."

%feature("docstring") digital_costas_loop_cc "Carrier tracking PLL for QPSK

input: complex; output: complex 
The Costas loop can have two output streams: stream 1 is the baseband I and Q; stream 2 is the normalized frequency of the loop.

must be 2, 4, or 8."



%feature("docstring") digital_costas_loop_cc::phase_detector_8 "the phase detector circuit for 8th-order PSK loops"

%feature("docstring") digital_costas_loop_cc::phase_detector_4 "the phase detector circuit for fourth-order loops"

%feature("docstring") digital_costas_loop_cc::phase_detector_2 "the phase detector circuit for second-order loops"



%feature("docstring") digital_make_costas_loop_cc "Carrier tracking PLL for QPSK

input: complex; output: complex 
The Costas loop can have two output streams: stream 1 is the baseband I and Q; stream 2 is the normalized frequency of the loop.

must be 2, 4, or 8."

%feature("docstring") digital_cpmmod_bc "Generic CPM modulator.

Examples:


The input of this block are symbols from an M-ary alphabet +/-1, +/-3, ..., +/-(M-1). Usually, M = 2 and therefore, the valid inputs are +/-1. The modulator will silently accept any other inputs, though. The output is the phase-modulated signal.

Args:
    type : The modulation type. Can be one of LREC, LRC, LSRC, TFM or GAUSSIAN. See gr_cpm::phase_response() for a detailed description.
    h : The modulation index.  is the maximum phase change that can occur between two symbols, i.e., if you only send ones, the phase will increase by  every  samples. Set this to 0.5 for Minimum Shift Keying variants.
    samples_per_sym : Samples per symbol.
    L : The length of the phase duration in symbols. For L=1, this yields full- response CPM symbols, for L > 1, partial-response.
    beta : For LSRC, this is the rolloff factor. For Gaussian pulses, this is the 3 dB time-bandwidth product."



%feature("docstring") digital_cpmmod_bc::get_taps "Return the phase response FIR taps."

%feature("docstring") digital_make_cpmmod_bc "Generic CPM modulator.

Examples:


The input of this block are symbols from an M-ary alphabet +/-1, +/-3, ..., +/-(M-1). Usually, M = 2 and therefore, the valid inputs are +/-1. The modulator will silently accept any other inputs, though. The output is the phase-modulated signal.

Args:
    type : The modulation type. Can be one of LREC, LRC, LSRC, TFM or GAUSSIAN. See gr_cpm::phase_response() for a detailed description.
    h : The modulation index.  is the maximum phase change that can occur between two symbols, i.e., if you only send ones, the phase will increase by  every  samples. Set this to 0.5 for Minimum Shift Keying variants.
    samples_per_sym : Samples per symbol.
    L : The length of the phase duration in symbols. For L=1, this yields full- response CPM symbols, for L > 1, partial-response.
    beta : For LSRC, this is the rolloff factor. For Gaussian pulses, this is the 3 dB time-bandwidth product."

%feature("docstring") digital_descrambler_bb "Descramble an input stream using an LFSR. This block works on the LSB only of the input data stream, i.e., on an \"unpacked binary\" stream, and produces the same format on its output.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length"





%feature("docstring") digital_make_descrambler_bb "Descramble an input stream using an LFSR. This block works on the LSB only of the input data stream, i.e., on an \"unpacked binary\" stream, and produces the same format on its output.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length"

%feature("docstring") digital_diff_decoder_bb "y[0] = (x[0] - x[-1]) % M

Uses current and previous symbols and the alphabet modulus to perform differential decoding."





%feature("docstring") digital_make_diff_decoder_bb "y[0] = (x[0] - x[-1]) % M

Uses current and previous symbols and the alphabet modulus to perform differential decoding."

%feature("docstring") digital_diff_encoder_bb "y[0] = (x[0] + y[-1]) % M

Uses current and previous symbols and the alphabet modulus to perform differential encoding."





%feature("docstring") digital_make_diff_encoder_bb "y[0] = (x[0] + y[-1]) % M

Uses current and previous symbols and the alphabet modulus to perform differential encoding."











%feature("docstring") digital_fll_band_edge_cc "Frequency Lock Loop using band-edge filters.

The frequency lock loop derives a band-edge filter that covers the upper and lower bandwidths of a digitally-modulated signal. The bandwidth range is determined by the excess bandwidth (e.g., rolloff factor) of the modulated signal. The placement in frequency of the band-edges is determined by the oversampling ratio (number of samples per symbol) and the excess bandwidth. The size of the filters should be fairly large so as to average over a number of symbols.

The FLL works by filtering the upper and lower band edges into x_u(t) and x_l(t), respectively. These are combined to form cc(t) = x_u(t) + x_l(t) and ss(t) = x_u(t) - x_l(t). Combining these to form the signal e(t) = Re{cc(t) \times ss(t)^*} (where ^* is the complex conjugate) provides an error signal at the DC term that is directly proportional to the carrier frequency. We then make a second-order loop using the error signal that is the running average of e(t).

In practice, the above equation can be simplified by just comparing the absolute value squared of the output of both filters: abs(x_l(t))^2 - abs(x_u(t))^2 = norm(x_l(t)) - norm(x_u(t)).

In theory, the band-edge filter is the derivative of the matched filter in frequency, (H_be(f) = frac{H(f)}{df}). In practice, this comes down to a quarter sine wave at the point of the matched filter's rolloff (if it's a raised-cosine, the derivative of a cosine is a sine). Extend this sine by another quarter wave to make a half wave around the band-edges is equivalent in time to the sum of two sinc functions. The baseband filter fot the band edges is therefore derived from this sum of sincs. The band edge filters are then just the baseband signal modulated to the correct place in frequency. All of these calculations are done in the 'design_filter' function.

Note: We use FIR filters here because the filters have to have a flat phase response over the entire frequency range to allow their comparisons to be valid.

It is very important that the band edge filters be the derivatives of the pulse shaping filter, and that they be linear phase. Otherwise, the variance of the error will be very large.

Build the FLL"

%feature("docstring") digital_fll_band_edge_cc::digital_fll_band_edge_cc "Build the FLL"

%feature("docstring") digital_fll_band_edge_cc::design_filter "Design the band-edge filter based on the number of samples per symbol, filter rolloff factor, and the filter size"



%feature("docstring") digital_fll_band_edge_cc::set_samples_per_symbol "Set the number of samples per symbol.

Set's the number of samples per symbol the system should use. This value is uesd to calculate the filter taps and will force a recalculation."

%feature("docstring") digital_fll_band_edge_cc::set_rolloff "Set the rolloff factor of the shaping filter.

This sets the rolloff factor that is used in the pulse shaping filter and is used to calculate the filter taps. Changing this will force a recalculation of the filter taps.

This should be the same value that is used in the transmitter's pulse shaping filter. It must be between 0 and 1 and is usually between 0.2 and 0.5 (where 0.22 and 0.35 are commonly used values)."

%feature("docstring") digital_fll_band_edge_cc::set_filter_size "Set the number of taps in the filter.

This sets the number of taps in the band-edge filters. Setting this will force a recalculation of the filter taps.

This should be about the same number of taps used in the transmitter's shaping filter and also not very large. A large number of taps will result in a large delay between input and frequency estimation, and so will not be as accurate. Between 30 and 70 taps is usual."

%feature("docstring") digital_fll_band_edge_cc::get_samples_per_symbol "Returns the number of sampler per symbol used for the filter."

%feature("docstring") digital_fll_band_edge_cc::get_rolloff "Returns the rolloff factor used for the filter."

%feature("docstring") digital_fll_band_edge_cc::get_filter_size "Returns the number of taps of the filter."

%feature("docstring") digital_fll_band_edge_cc::print_taps "Print the taps to screen."



%feature("docstring") digital_make_fll_band_edge_cc "Frequency Lock Loop using band-edge filters.

The frequency lock loop derives a band-edge filter that covers the upper and lower bandwidths of a digitally-modulated signal. The bandwidth range is determined by the excess bandwidth (e.g., rolloff factor) of the modulated signal. The placement in frequency of the band-edges is determined by the oversampling ratio (number of samples per symbol) and the excess bandwidth. The size of the filters should be fairly large so as to average over a number of symbols.

The FLL works by filtering the upper and lower band edges into x_u(t) and x_l(t), respectively. These are combined to form cc(t) = x_u(t) + x_l(t) and ss(t) = x_u(t) - x_l(t). Combining these to form the signal e(t) = Re{cc(t) \times ss(t)^*} (where ^* is the complex conjugate) provides an error signal at the DC term that is directly proportional to the carrier frequency. We then make a second-order loop using the error signal that is the running average of e(t).

In practice, the above equation can be simplified by just comparing the absolute value squared of the output of both filters: abs(x_l(t))^2 - abs(x_u(t))^2 = norm(x_l(t)) - norm(x_u(t)).

In theory, the band-edge filter is the derivative of the matched filter in frequency, (H_be(f) = frac{H(f)}{df}). In practice, this comes down to a quarter sine wave at the point of the matched filter's rolloff (if it's a raised-cosine, the derivative of a cosine is a sine). Extend this sine by another quarter wave to make a half wave around the band-edges is equivalent in time to the sum of two sinc functions. The baseband filter fot the band edges is therefore derived from this sum of sincs. The band edge filters are then just the baseband signal modulated to the correct place in frequency. All of these calculations are done in the 'design_filter' function.

Note: We use FIR filters here because the filters have to have a flat phase response over the entire frequency range to allow their comparisons to be valid.

It is very important that the band edge filters be the derivatives of the pulse shaping filter, and that they be linear phase. Otherwise, the variance of the error will be very large.

Build the FLL"

%feature("docstring") digital_framer_sink_1 "Given a stream of bits and access_code flags, assemble packets.

input: stream of bytes from gr_correlate_access_code_bb output: none. Pushes assembled packet into target queue.

The framer expects a fixed length header of 2 16-bit shorts containing the payload length, followed by the payload. If the 2 16-bit shorts are not identical, this packet is ignored. Better algs are welcome.

The input data consists of bytes that have two bits used. Bit 0, the LSB, contains the data bit. Bit 1 if set, indicates that the corresponding bit is the the first bit of the packet. That is, this bit is the first one after the access code."

















%feature("docstring") digital_make_framer_sink_1 "Given a stream of bits and access_code flags, assemble packets.

input: stream of bytes from gr_correlate_access_code_bb output: none. Pushes assembled packet into target queue.

The framer expects a fixed length header of 2 16-bit shorts containing the payload length, followed by the payload. If the 2 16-bit shorts are not identical, this packet is ignored. Better algs are welcome.

The input data consists of bytes that have two bits used. Bit 0, the LSB, contains the data bit. Bit 1 if set, indicates that the corresponding bit is the the first bit of the packet. That is, this bit is the first one after the access code."

%feature("docstring") digital_glfsr_source_b "Galois LFSR pseudo-random source.

Args:
    degree : Degree of shift register must be in [1, 32]. If mask is 0, the degree determines a default mask (see digital_impl_glfsr.cc for the mapping).
    repeat : Set to repeat sequence.
    mask : Allows a user-defined bit mask for indexes of the shift register to feed back.
    seed : Initial setting for values in shift register."











%feature("docstring") digital_make_glfsr_source_b "Galois LFSR pseudo-random source.

Args:
    degree : Degree of shift register must be in [1, 32]. If mask is 0, the degree determines a default mask (see digital_impl_glfsr.cc for the mapping).
    repeat : Set to repeat sequence.
    mask : Allows a user-defined bit mask for indexes of the shift register to feed back.
    seed : Initial setting for values in shift register."

%feature("docstring") digital_glfsr_source_f "Galois LFSR pseudo-random source generating float outputs -1.0 - 1.0.

Args:
    degree : Degree of shift register must be in [1, 32]. If mask is 0, the degree determines a default mask (see digital_impl_glfsr.cc for the mapping).
    repeat : Set to repeat sequence.
    mask : Allows a user-defined bit mask for indexes of the shift register to feed back.
    seed : Initial setting for values in shift register."











%feature("docstring") digital_make_glfsr_source_f "Galois LFSR pseudo-random source generating float outputs -1.0 - 1.0.

Args:
    degree : Degree of shift register must be in [1, 32]. If mask is 0, the degree determines a default mask (see digital_impl_glfsr.cc for the mapping).
    repeat : Set to repeat sequence.
    mask : Allows a user-defined bit mask for indexes of the shift register to feed back.
    seed : Initial setting for values in shift register."

%feature("docstring") digital_gmskmod_bc "GMSK modulator.

The input of this block are symbols from an M-ary alphabet +/-1, +/-3, ..., +/-(M-1). Usually, M = 2 and therefore, the valid inputs are +/-1. The modulator will silently accept any other inputs, though. The output is the phase-modulated signal.

Args:
    samples_per_sym : Samples per symbol.
    bt : The 3 dB time-bandwidth product.
    L : The length of the phase duration in symbols. The Gaussian pulse is truncated after L symbols."



%feature("docstring") digital_make_gmskmod_bc "GMSK modulator.

The input of this block are symbols from an M-ary alphabet +/-1, +/-3, ..., +/-(M-1). Usually, M = 2 and therefore, the valid inputs are +/-1. The modulator will silently accept any other inputs, though. The output is the phase-modulated signal.

Args:
    samples_per_sym : Samples per symbol.
    bt : The 3 dB time-bandwidth product.
    L : The length of the phase duration in symbols. The Gaussian pulse is truncated after L symbols."

%feature("docstring") digital_kurtotic_equalizer_cc "Implements a kurtosis-based adaptive equalizer on complex stream

\"Y. Guo, J. Zhao, Y. Sun, \"Sign kurtosis maximization based blind equalization algorithm,\" IEEE Conf. on Control, Automation,
 Robotics and Vision, Vol. 3, Dec. 2004, pp. 2052 - 2057.\"."











%feature("docstring") digital_make_kurtotic_equalizer_cc "Implements a kurtosis-based adaptive equalizer on complex stream

\"Y. Guo, J. Zhao, Y. Sun, \"Sign kurtosis maximization based blind equalization algorithm,\" IEEE Conf. on Control, Automation,
 Robotics and Vision, Vol. 3, Dec. 2004, pp. 2052 - 2057.\"."

%feature("docstring") digital_lms_dd_equalizer_cc "Least-Mean-Square Decision Directed Equalizer (complex in/out)

This block implements an LMS-based decision-directed equalizer. It uses a set of weights, w, to correlate against the inputs, u, and a decisions is then made from this output. The error in the decision is used to update teh weight vector.

y[n] = conj(w[n]) u[n] d[n] = decision(y[n]) e[n] = d[n] - y[n] w[n+1] = w[n] + mu u[n] conj(e[n])

Where mu is a gain value (between 0 and 1 and usualy small, around 0.001 - 0.01.

This block uses the digital_constellation object for making the decision from y[n]. Create the constellation object for whatever constellation is to be used and pass in the object. In Python, you can use something like: self.constellation = digital.constellation_qpsk() To create a QPSK constellation (see the digital_constellation block for more details as to what constellations are available or how to create your own). You then pass the object to this block as an sptr, or using \"self.constellation.base()\".

The theory for this algorithm can be found in Chapter 9 of: S. Haykin, Adaptive Filter Theory, Upper Saddle River, NJ: Prentice Hall, 1996."











%feature("docstring") digital_make_lms_dd_equalizer_cc "Least-Mean-Square Decision Directed Equalizer (complex in/out)

This block implements an LMS-based decision-directed equalizer. It uses a set of weights, w, to correlate against the inputs, u, and a decisions is then made from this output. The error in the decision is used to update teh weight vector.

y[n] = conj(w[n]) u[n] d[n] = decision(y[n]) e[n] = d[n] - y[n] w[n+1] = w[n] + mu u[n] conj(e[n])

Where mu is a gain value (between 0 and 1 and usualy small, around 0.001 - 0.01.

This block uses the digital_constellation object for making the decision from y[n]. Create the constellation object for whatever constellation is to be used and pass in the object. In Python, you can use something like: self.constellation = digital.constellation_qpsk() To create a QPSK constellation (see the digital_constellation block for more details as to what constellations are available or how to create your own). You then pass the object to this block as an sptr, or using \"self.constellation.base()\".

The theory for this algorithm can be found in Chapter 9 of: S. Haykin, Adaptive Filter Theory, Upper Saddle River, NJ: Prentice Hall, 1996."

%feature("docstring") digital_map_bb "output[i] = map[input[i]]

This block maps an incoming signal to the value in the map. The block expects that the incoming signal has a maximum value of len(map)-1.

-> output[i] = map[input[i]]

Args:
    map : a vector of integers."





%feature("docstring") digital_make_map_bb "output[i] = map[input[i]]

This block maps an incoming signal to the value in the map. The block expects that the incoming signal has a maximum value of len(map)-1.

-> output[i] = map[input[i]]

Args:
    map : a vector of integers."

%feature("docstring") digital_mpsk_receiver_cc "This block takes care of receiving M-PSK modulated signals through phase, frequency, and symbol synchronization.

This block takes care of receiving M-PSK modulated signals through phase, frequency, and symbol synchronization. It performs carrier frequency and phase locking as well as symbol timing recovery. It works with (D)BPSK, (D)QPSK, and (D)8PSK as tested currently. It should also work for OQPSK and PI/4 DQPSK.

The phase and frequency synchronization are based on a Costas loop that finds the error of the incoming signal point compared to its nearest constellation point. The frequency and phase of the NCO are updated according to this error. There are optimized phase error detectors for BPSK and QPSK, but 8PSK is done using a brute-force computation of the constellation points to find the minimum.

The symbol synchronization is done using a modified Mueller and Muller circuit from the paper:

\"G. R. Danesfahani, T. G. Jeans, \"Optimisation of modified Mueller and Muller algorithm,\" Electronics Letters, Vol. 31, no. 13, 22
 June 1995, pp. 1032 - 1033.\"

This circuit interpolates the downconverted sample (using the NCO developed by the Costas loop) every mu samples, then it finds the sampling error based on this and the past symbols and the decision made on the samples. Like the phase error detector, there are optimized decision algorithms for BPSK and QPKS, but 8PSK uses another brute force computation against all possible symbols. The modifications to the M&M used here reduce self-noise."







%feature("docstring") digital_mpsk_receiver_cc::modulation_order "Returns the modulation order (M) currently set."

%feature("docstring") digital_mpsk_receiver_cc::theta "Returns current value of theta."

%feature("docstring") digital_mpsk_receiver_cc::mu "Returns current value of mu."

%feature("docstring") digital_mpsk_receiver_cc::omega "Returns current value of omega."

%feature("docstring") digital_mpsk_receiver_cc::gain_mu "Returns mu gain factor."

%feature("docstring") digital_mpsk_receiver_cc::gain_omega "Returns omega gain factor."

%feature("docstring") digital_mpsk_receiver_cc::gain_omega_rel "Returns the relative omega limit."

%feature("docstring") digital_mpsk_receiver_cc::set_modulation_order "Sets the modulation order (M) currently."

%feature("docstring") digital_mpsk_receiver_cc::set_theta "Sets value of theta."

%feature("docstring") digital_mpsk_receiver_cc::set_mu "Sets value of mu."

%feature("docstring") digital_mpsk_receiver_cc::set_omega "Sets value of omega and its min and max values."

%feature("docstring") digital_mpsk_receiver_cc::set_gain_mu "Sets value for mu gain factor."

%feature("docstring") digital_mpsk_receiver_cc::set_gain_omega "Sets value for omega gain factor."

%feature("docstring") digital_mpsk_receiver_cc::set_gain_omega_rel "Sets the relative omega limit and resets omega min/max values."

%feature("docstring") digital_mpsk_receiver_cc::digital_mpsk_receiver_cc "Constructor to synchronize incoming M-PSK symbols.

The constructor also chooses which phase detector and decision maker to use in the work loop based on the value of M."









%feature("docstring") digital_mpsk_receiver_cc::phase_error_detector_generic "Phase error detector for MPSK modulations.

This function determines the phase error for any MPSK signal by creating a set of PSK constellation points and doing a brute-force search to see which point minimizes the Euclidean distance. This point is then used to derotate the sample to the real-axis and a atan (using the fast approximation function) to determine the phase difference between the incoming sample and the real constellation point

This should be cleaned up and made more efficient."

%feature("docstring") digital_mpsk_receiver_cc::phase_error_detector_bpsk "Phase error detector for BPSK modulation.

This function determines the phase error using a simple BPSK phase error detector by multiplying the real and imaginary (the error signal) components together. As the imaginary part goes to 0, so does this error."

%feature("docstring") digital_mpsk_receiver_cc::phase_error_detector_qpsk "Phase error detector for QPSK modulation.

This function determines the phase error using the limiter approach in a standard 4th order Costas loop"

%feature("docstring") digital_mpsk_receiver_cc::decision_generic "Decision maker for a generic MPSK constellation.

This decision maker is a generic implementation that does a brute-force search for the constellation point that minimizes the error between it and the incoming signal."

%feature("docstring") digital_mpsk_receiver_cc::decision_bpsk "Decision maker for BPSK constellation.

This decision maker is a simple slicer function that makes a decision on the symbol based on its placement on the real axis of greater than 0 or less than 0; the quadrature component is always 0."

%feature("docstring") digital_mpsk_receiver_cc::decision_qpsk "Decision maker for QPSK constellation.

This decision maker is a simple slicer function that makes a decision on the symbol based on its placement versus both axes and returns which quadrant the symbol is in."

%feature("docstring") digital_mpsk_receiver_cc::__GR_ATTR_ALIGNED "delay line plus some length for overflow protection"

%feature("docstring") digital_make_mpsk_receiver_cc "This block takes care of receiving M-PSK modulated signals through phase, frequency, and symbol synchronization.

This block takes care of receiving M-PSK modulated signals through phase, frequency, and symbol synchronization. It performs carrier frequency and phase locking as well as symbol timing recovery. It works with (D)BPSK, (D)QPSK, and (D)8PSK as tested currently. It should also work for OQPSK and PI/4 DQPSK.

The phase and frequency synchronization are based on a Costas loop that finds the error of the incoming signal point compared to its nearest constellation point. The frequency and phase of the NCO are updated according to this error. There are optimized phase error detectors for BPSK and QPSK, but 8PSK is done using a brute-force computation of the constellation points to find the minimum.

The symbol synchronization is done using a modified Mueller and Muller circuit from the paper:

\"G. R. Danesfahani, T. G. Jeans, \"Optimisation of modified Mueller and Muller algorithm,\" Electronics Letters, Vol. 31, no. 13, 22
 June 1995, pp. 1032 - 1033.\"

This circuit interpolates the downconverted sample (using the NCO developed by the Costas loop) every mu samples, then it finds the sampling error based on this and the past symbols and the decision made on the samples. Like the phase error detector, there are optimized decision algorithms for BPSK and QPKS, but 8PSK uses another brute force computation against all possible symbols. The modifications to the M&M used here reduce self-noise."

%feature("docstring") digital_mpsk_snr_est_cc "A block for computing SNR of a signal.

This block can be used to monitor and retrieve estimations of the signal SNR. It is designed to work in a flowgraph and passes all incoming data along to its output.

The block is designed for use with M-PSK signals especially. The type of estimator is specified as the  parameter in the constructor. The estimators tend to trade off performance for accuracy, although experimentation should be done to figure out the right approach for a given implementation. Further, the current set of estimators are designed and proven theoretically under AWGN conditions; some amount of error should be assumed and/or estimated for real channel conditions.

Factory function returning shared pointer of this class

Parameters:"







%feature("docstring") digital_mpsk_snr_est_cc::snr "Return the estimated signal-to-noise ratio in decibels."

%feature("docstring") digital_mpsk_snr_est_cc::type "Return the type of estimator in use."

%feature("docstring") digital_mpsk_snr_est_cc::tag_nsample "Return how many samples between SNR tags."

%feature("docstring") digital_mpsk_snr_est_cc::alpha "Get the running-average coefficient."

%feature("docstring") digital_mpsk_snr_est_cc::set_type "Set type of estimator to use."

%feature("docstring") digital_mpsk_snr_est_cc::set_tag_nsample "Set the number of samples between SNR tags."

%feature("docstring") digital_mpsk_snr_est_cc::set_alpha "Set the running-average coefficient."

%feature("docstring") digital_make_mpsk_snr_est_cc "A block for computing SNR of a signal.

This block can be used to monitor and retrieve estimations of the signal SNR. It is designed to work in a flowgraph and passes all incoming data along to its output.

The block is designed for use with M-PSK signals especially. The type of estimator is specified as the  parameter in the constructor. The estimators tend to trade off performance for accuracy, although experimentation should be done to figure out the right approach for a given implementation. Further, the current set of estimators are designed and proven theoretically under AWGN conditions; some amount of error should be assumed and/or estimated for real channel conditions.

Factory function returning shared pointer of this class

Parameters:"

%feature("docstring") digital_ofdm_cyclic_prefixer "adds a cyclic prefix vector to an input size long ofdm symbol(vector) and converts vector to a stream output_size long."





%feature("docstring") digital_make_ofdm_cyclic_prefixer "adds a cyclic prefix vector to an input size long ofdm symbol(vector) and converts vector to a stream output_size long."

%feature("docstring") digital_ofdm_frame_acquisition "take a vector of complex constellation points in from an FFT and performs a correlation and equalization.

This block takes the output of an FFT of a received OFDM symbol and finds the start of a frame based on two known symbols. It also looks at the surrounding bins in the FFT output for the correlation in case there is a large frequency shift in the data. This block assumes that the fine frequency shift has already been corrected and that the samples fall in the middle of one FFT bin.

It then uses one of those known symbols to estimate the channel response over all subcarriers and does a simple 1-tap equalization on all subcarriers. This corrects for the phase and amplitude distortion caused by the channel."













%feature("docstring") digital_ofdm_frame_acquisition::snr "Return an estimate of the SNR of the channel."





%feature("docstring") digital_make_ofdm_frame_acquisition "take a vector of complex constellation points in from an FFT and performs a correlation and equalization.

This block takes the output of an FFT of a received OFDM symbol and finds the start of a frame based on two known symbols. It also looks at the surrounding bins in the FFT output for the correlation in case there is a large frequency shift in the data. This block assumes that the fine frequency shift has already been corrected and that the samples fall in the middle of one FFT bin.

It then uses one of those known symbols to estimate the channel response over all subcarriers and does a simple 1-tap equalization on all subcarriers. This corrects for the phase and amplitude distortion caused by the channel."

%feature("docstring") digital_ofdm_frame_sink "Takes an OFDM symbol in, demaps it into bits of 0's and 1's, packs them into packets, and sends to to a message queue sink.

NOTE: The mod input parameter simply chooses a pre-defined demapper/slicer. Eventually, we want to be able to pass in a reference to an object to do the demapping and slicing for a given modulation type."





















%feature("docstring") digital_make_ofdm_frame_sink "Takes an OFDM symbol in, demaps it into bits of 0's and 1's, packs them into packets, and sends to to a message queue sink.

NOTE: The mod input parameter simply chooses a pre-defined demapper/slicer. Eventually, we want to be able to pass in a reference to an object to do the demapping and slicing for a given modulation type."

%feature("docstring") digital_ofdm_insert_preamble "insert \"pre-modulated\" preamble symbols before each payload.

Args:
    fft_length : length of each symbol in samples.
    preamble : vector of symbols that represent the pre-modulated preamble."

















%feature("docstring") digital_make_ofdm_insert_preamble "insert \"pre-modulated\" preamble symbols before each payload.

Args:
    fft_length : length of each symbol in samples.
    preamble : vector of symbols that represent the pre-modulated preamble."

%feature("docstring") digital_ofdm_mapper_bcv "take a stream of bytes in and map to a vector of complex constellation points suitable for IFFT input to be used in an ofdm modulator. Abstract class must be subclassed with specific mapping."











%feature("docstring") digital_make_ofdm_mapper_bcv "take a stream of bytes in and map to a vector of complex constellation points suitable for IFFT input to be used in an ofdm modulator. Abstract class must be subclassed with specific mapping."

%feature("docstring") digital_ofdm_sampler "does the rest of the OFDM stuff"







%feature("docstring") digital_make_ofdm_sampler "does the rest of the OFDM stuff"

%feature("docstring") digital_packet_sink "process received bits looking for packet sync, header, and process bits into packet

input: stream of symbols to be sliced.

output: none. Pushes assembled packet into target queue

The packet sink takes in a stream of binary symbols that are sliced around 0. The bits are then checked for the  to determine find and decode the packet. It then expects a fixed length header of 2 16-bit shorts containing the payload length, followed by the payload. If the 2 16-bit shorts are not identical, this packet is ignored. Better algs are welcome.

This block is not very useful anymore as it only works with 2-level modulations such as BPSK or GMSK. The block can generally be replaced with a correlate access code and frame sink blocks.

Args:
    sync_vector : The synchronization vector as a vector of 1's and 0's.
    target_queue : The message queue that packets are sent to.
    threshold : Number of bits that can be incorrect in the ."



















%feature("docstring") digital_packet_sink::carrier_sensed "return true if we detect carrier"

%feature("docstring") digital_make_packet_sink "process received bits looking for packet sync, header, and process bits into packet

input: stream of symbols to be sliced.

output: none. Pushes assembled packet into target queue

The packet sink takes in a stream of binary symbols that are sliced around 0. The bits are then checked for the  to determine find and decode the packet. It then expects a fixed length header of 2 16-bit shorts containing the payload length, followed by the payload. If the 2 16-bit shorts are not identical, this packet is ignored. Better algs are welcome.

This block is not very useful anymore as it only works with 2-level modulations such as BPSK or GMSK. The block can generally be replaced with a correlate access code and frame sink blocks.

Args:
    sync_vector : The synchronization vector as a vector of 1's and 0's.
    target_queue : The message queue that packets are sent to.
    threshold : Number of bits that can be incorrect in the ."

%feature("docstring") digital_pfb_clock_sync_ccf "Timing synchronizer using polyphase filterbanks.

This block performs timing synchronization for PAM signals by minimizing the derivative of the filtered signal, which in turn maximizes the SNR and minimizes ISI.

This approach works by setting up two filterbanks; one filterbank contains the signal's pulse shaping matched filter (such as a root raised cosine filter), where each branch of the filterbank contains a different phase of the filter. The second filterbank contains the derivatives of the filters in the first filterbank. Thinking of this in the time domain, the first filterbank contains filters that have a sinc shape to them. We want to align the output signal to be sampled at exactly the peak of the sinc shape. The derivative of the sinc contains a zero at the maximum point of the sinc (sinc(0) = 1, sinc(0)' = 0). Furthermore, the region around the zero point is relatively linear. We make use of this fact to generate the error signal.

If the signal out of the derivative filters is d_i[n] for the ith filter, and the output of the matched filter is x_i[n], we calculate the error as: e[n] = (Re{x_i[n]} * Re{d_i[n]} + Im{x_i[n]} * Im{d_i[n]}) / 2.0 This equation averages the error in the real and imaginary parts. There are two reasons we multiply by the signal itself. First, if the symbol could be positive or negative going, but we want the error term to always tell us to go in the same direction depending on which side of the zero point we are on. The sign of x_i[n] adjusts the error term to do this. Second, the magnitude of x_i[n] scales the error term depending on the symbol's amplitude, so larger signals give us a stronger error term because we have more confidence in that symbol's value. Using the magnitude of x_i[n] instead of just the sign is especially good for signals with low SNR.

The error signal, e[n], gives us a value proportional to how far away from the zero point we are in the derivative signal. We want to drive this value to zero, so we set up a second order loop. We have two variables for this loop; d_k is the filter number in the filterbank we are on and d_rate is the rate which we travel through the filters in the steady state. That is, due to the natural clock differences between the transmitter and receiver, d_rate represents that difference and would traverse the filter phase paths to keep the receiver locked. Thinking of this as a second-order PLL, the d_rate is the frequency and d_k is the phase. So we update d_rate and d_k using the standard loop equations based on two error signals, d_alpha and d_beta. We have these two values set based on each other for a critically damped system, so in the block constructor, we just ask for \"gain,\" which is d_alpha while d_beta is equal to (gain^2)/4.

The block's parameters are:

Build the polyphase filterbank timing synchronizer."

%feature("docstring") digital_pfb_clock_sync_ccf::digital_pfb_clock_sync_ccf "Build the polyphase filterbank timing synchronizer."





%feature("docstring") digital_pfb_clock_sync_ccf::update_gains "update the system gains from omega and eta

This function updates the system gains based on the loop bandwidth and damping factor of the system. These two factors can be set separately through their own set functions."

%feature("docstring") digital_pfb_clock_sync_ccf::set_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") digital_pfb_clock_sync_ccf::get_taps "Returns all of the taps of the matched filter"

%feature("docstring") digital_pfb_clock_sync_ccf::get_diff_taps "Returns all of the taps of the derivative filter"

%feature("docstring") digital_pfb_clock_sync_ccf::get_channel_taps "Returns the taps of the matched filter for a particular channel"

%feature("docstring") digital_pfb_clock_sync_ccf::get_diff_channel_taps "Returns the taps in the derivative filter for a particular channel"

%feature("docstring") digital_pfb_clock_sync_ccf::get_taps_as_string "Return the taps as a formatted string for printing"

%feature("docstring") digital_pfb_clock_sync_ccf::get_diff_taps_as_string "Return the derivative filter taps as a formatted string for printing"

%feature("docstring") digital_pfb_clock_sync_ccf::set_loop_bandwidth "Set the loop bandwidth.

Set the loop filter's bandwidth to . This should be between 2*pi/200 and 2*pi/100 (in rads/samp). It must also be a positive number.

When a new damping factor is set, the gains, alpha and beta, of the loop are recalculated by a call to update_gains()."

%feature("docstring") digital_pfb_clock_sync_ccf::set_damping_factor "Set the loop damping factor.

Set the loop filter's damping factor to . The damping factor should be sqrt(2)/2.0 for critically damped systems. Set it to anything else only if you know what you are doing. It must be a number between 0 and 1.

When a new damping factor is set, the gains, alpha and beta, of the loop are recalculated by a call to update_gains()."

%feature("docstring") digital_pfb_clock_sync_ccf::set_alpha "Set the loop gain alpha.

Set's the loop filter's alpha gain parameter.

This value should really only be set by adjusting the loop bandwidth and damping factor."

%feature("docstring") digital_pfb_clock_sync_ccf::set_beta "Set the loop gain beta.

Set's the loop filter's beta gain parameter.

This value should really only be set by adjusting the loop bandwidth and damping factor."

%feature("docstring") digital_pfb_clock_sync_ccf::set_max_rate_deviation "Set the maximum deviation from 0 d_rate can have"

%feature("docstring") digital_pfb_clock_sync_ccf::get_loop_bandwidth "Returns the loop bandwidth."

%feature("docstring") digital_pfb_clock_sync_ccf::get_damping_factor "Returns the loop damping factor."

%feature("docstring") digital_pfb_clock_sync_ccf::get_alpha "Returns the loop gain alpha."

%feature("docstring") digital_pfb_clock_sync_ccf::get_beta "Returns the loop gain beta."

%feature("docstring") digital_pfb_clock_sync_ccf::get_clock_rate "Returns the current clock rate."





%feature("docstring") digital_make_pfb_clock_sync_ccf "Timing synchronizer using polyphase filterbanks.

This block performs timing synchronization for PAM signals by minimizing the derivative of the filtered signal, which in turn maximizes the SNR and minimizes ISI.

This approach works by setting up two filterbanks; one filterbank contains the signal's pulse shaping matched filter (such as a root raised cosine filter), where each branch of the filterbank contains a different phase of the filter. The second filterbank contains the derivatives of the filters in the first filterbank. Thinking of this in the time domain, the first filterbank contains filters that have a sinc shape to them. We want to align the output signal to be sampled at exactly the peak of the sinc shape. The derivative of the sinc contains a zero at the maximum point of the sinc (sinc(0) = 1, sinc(0)' = 0). Furthermore, the region around the zero point is relatively linear. We make use of this fact to generate the error signal.

If the signal out of the derivative filters is d_i[n] for the ith filter, and the output of the matched filter is x_i[n], we calculate the error as: e[n] = (Re{x_i[n]} * Re{d_i[n]} + Im{x_i[n]} * Im{d_i[n]}) / 2.0 This equation averages the error in the real and imaginary parts. There are two reasons we multiply by the signal itself. First, if the symbol could be positive or negative going, but we want the error term to always tell us to go in the same direction depending on which side of the zero point we are on. The sign of x_i[n] adjusts the error term to do this. Second, the magnitude of x_i[n] scales the error term depending on the symbol's amplitude, so larger signals give us a stronger error term because we have more confidence in that symbol's value. Using the magnitude of x_i[n] instead of just the sign is especially good for signals with low SNR.

The error signal, e[n], gives us a value proportional to how far away from the zero point we are in the derivative signal. We want to drive this value to zero, so we set up a second order loop. We have two variables for this loop; d_k is the filter number in the filterbank we are on and d_rate is the rate which we travel through the filters in the steady state. That is, due to the natural clock differences between the transmitter and receiver, d_rate represents that difference and would traverse the filter phase paths to keep the receiver locked. Thinking of this as a second-order PLL, the d_rate is the frequency and d_k is the phase. So we update d_rate and d_k using the standard loop equations based on two error signals, d_alpha and d_beta. We have these two values set based on each other for a critically damped system, so in the block constructor, we just ask for \"gain,\" which is d_alpha while d_beta is equal to (gain^2)/4.

The block's parameters are:

Build the polyphase filterbank timing synchronizer."

%feature("docstring") digital_pfb_clock_sync_fff "Timing synchronizer using polyphase filterbanks.

This block performs timing synchronization for PAM signals by minimizing the derivative of the filtered signal, which in turn maximizes the SNR and minimizes ISI.

This approach works by setting up two filterbanks; one filterbank contains the signal's pulse shaping matched filter (such as a root raised cosine filter), where each branch of the filterbank contains a different phase of the filter. The second filterbank contains the derivatives of the filters in the first filterbank. Thinking of this in the time domain, the first filterbank contains filters that have a sinc shape to them. We want to align the output signal to be sampled at exactly the peak of the sinc shape. The derivative of the sinc contains a zero at the maximum point of the sinc (sinc(0) = 1, sinc(0)' = 0). Furthermore, the region around the zero point is relatively linear. We make use of this fact to generate the error signal.

If the signal out of the derivative filters is d_i[n] for the ith filter, and the output of the matched filter is x_i[n], we calculate the error as: e[n] = (Re{x_i[n]} * Re{d_i[n]} + Im{x_i[n]} * Im{d_i[n]}) / 2.0 This equation averages the error in the real and imaginary parts. There are two reasons we multiply by the signal itself. First, if the symbol could be positive or negative going, but we want the error term to always tell us to go in the same direction depending on which side of the zero point we are on. The sign of x_i[n] adjusts the error term to do this. Second, the magnitude of x_i[n] scales the error term depending on the symbol's amplitude, so larger signals give us a stronger error term because we have more confidence in that symbol's value. Using the magnitude of x_i[n] instead of just the sign is especially good for signals with low SNR.

The error signal, e[n], gives us a value proportional to how far away from the zero point we are in the derivative signal. We want to drive this value to zero, so we set up a second order loop. We have two variables for this loop; d_k is the filter number in the filterbank we are on and d_rate is the rate which we travel through the filters in the steady state. That is, due to the natural clock differences between the transmitter and receiver, d_rate represents that difference and would traverse the filter phase paths to keep the receiver locked. Thinking of this as a second-order PLL, the d_rate is the frequency and d_k is the phase. So we update d_rate and d_k using the standard loop equations based on two error signals, d_alpha and d_beta. We have these two values set based on each other for a critically damped system, so in the block constructor, we just ask for \"gain,\" which is d_alpha while d_beta is equal to (gain^2)/4.

The block's parameters are:

Build the polyphase filterbank timing synchronizer."

%feature("docstring") digital_pfb_clock_sync_fff::digital_pfb_clock_sync_fff "Build the polyphase filterbank timing synchronizer."





%feature("docstring") digital_pfb_clock_sync_fff::update_gains "update the system gains from omega and eta

This function updates the system gains based on the loop bandwidth and damping factor of the system. These two factors can be set separately through their own set functions."

%feature("docstring") digital_pfb_clock_sync_fff::set_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") digital_pfb_clock_sync_fff::get_taps "Returns all of the taps of the matched filter"

%feature("docstring") digital_pfb_clock_sync_fff::get_diff_taps "Returns all of the taps of the derivative filter"

%feature("docstring") digital_pfb_clock_sync_fff::get_channel_taps "Returns the taps of the matched filter for a particular channel"

%feature("docstring") digital_pfb_clock_sync_fff::get_diff_channel_taps "Returns the taps in the derivative filter for a particular channel"

%feature("docstring") digital_pfb_clock_sync_fff::get_taps_as_string "Return the taps as a formatted string for printing"

%feature("docstring") digital_pfb_clock_sync_fff::get_diff_taps_as_string "Return the derivative filter taps as a formatted string for printing"

%feature("docstring") digital_pfb_clock_sync_fff::set_loop_bandwidth "Set the loop bandwidth.

Set the loop filter's bandwidth to . This should be between 2*pi/200 and 2*pi/100 (in rads/samp). It must also be a positive number.

When a new damping factor is set, the gains, alpha and beta, of the loop are recalculated by a call to update_gains()."

%feature("docstring") digital_pfb_clock_sync_fff::set_damping_factor "Set the loop damping factor.

Set the loop filter's damping factor to . The damping factor should be sqrt(2)/2.0 for critically damped systems. Set it to anything else only if you know what you are doing. It must be a number between 0 and 1.

When a new damping factor is set, the gains, alpha and beta, of the loop are recalculated by a call to update_gains()."

%feature("docstring") digital_pfb_clock_sync_fff::set_alpha "Set the loop gain alpha.

Set's the loop filter's alpha gain parameter.

This value should really only be set by adjusting the loop bandwidth and damping factor."

%feature("docstring") digital_pfb_clock_sync_fff::set_beta "Set the loop gain beta.

Set's the loop filter's beta gain parameter.

This value should really only be set by adjusting the loop bandwidth and damping factor."

%feature("docstring") digital_pfb_clock_sync_fff::set_max_rate_deviation "Set the maximum deviation from 0 d_rate can have"

%feature("docstring") digital_pfb_clock_sync_fff::get_loop_bandwidth "Returns the loop bandwidth."

%feature("docstring") digital_pfb_clock_sync_fff::get_damping_factor "Returns the loop damping factor."

%feature("docstring") digital_pfb_clock_sync_fff::get_alpha "Returns the loop gain alpha."

%feature("docstring") digital_pfb_clock_sync_fff::get_beta "Returns the loop gain beta."

%feature("docstring") digital_pfb_clock_sync_fff::get_clock_rate "Returns the current clock rate."





%feature("docstring") digital_make_pfb_clock_sync_fff "Timing synchronizer using polyphase filterbanks.

This block performs timing synchronization for PAM signals by minimizing the derivative of the filtered signal, which in turn maximizes the SNR and minimizes ISI.

This approach works by setting up two filterbanks; one filterbank contains the signal's pulse shaping matched filter (such as a root raised cosine filter), where each branch of the filterbank contains a different phase of the filter. The second filterbank contains the derivatives of the filters in the first filterbank. Thinking of this in the time domain, the first filterbank contains filters that have a sinc shape to them. We want to align the output signal to be sampled at exactly the peak of the sinc shape. The derivative of the sinc contains a zero at the maximum point of the sinc (sinc(0) = 1, sinc(0)' = 0). Furthermore, the region around the zero point is relatively linear. We make use of this fact to generate the error signal.

If the signal out of the derivative filters is d_i[n] for the ith filter, and the output of the matched filter is x_i[n], we calculate the error as: e[n] = (Re{x_i[n]} * Re{d_i[n]} + Im{x_i[n]} * Im{d_i[n]}) / 2.0 This equation averages the error in the real and imaginary parts. There are two reasons we multiply by the signal itself. First, if the symbol could be positive or negative going, but we want the error term to always tell us to go in the same direction depending on which side of the zero point we are on. The sign of x_i[n] adjusts the error term to do this. Second, the magnitude of x_i[n] scales the error term depending on the symbol's amplitude, so larger signals give us a stronger error term because we have more confidence in that symbol's value. Using the magnitude of x_i[n] instead of just the sign is especially good for signals with low SNR.

The error signal, e[n], gives us a value proportional to how far away from the zero point we are in the derivative signal. We want to drive this value to zero, so we set up a second order loop. We have two variables for this loop; d_k is the filter number in the filterbank we are on and d_rate is the rate which we travel through the filters in the steady state. That is, due to the natural clock differences between the transmitter and receiver, d_rate represents that difference and would traverse the filter phase paths to keep the receiver locked. Thinking of this as a second-order PLL, the d_rate is the frequency and d_k is the phase. So we update d_rate and d_k using the standard loop equations based on two error signals, d_alpha and d_beta. We have these two values set based on each other for a critically damped system, so in the block constructor, we just ask for \"gain,\" which is d_alpha while d_beta is equal to (gain^2)/4.

The block's parameters are:

Build the polyphase filterbank timing synchronizer."

%feature("docstring") digital_pn_correlator_cc "PN code sequential search correlator.

Receives complex baseband signal, outputs complex correlation against reference PN code, one sample per PN code period. The PN sequence is generated using a GLFSR.

Args:
    degree : Degree of shift register must be in [1, 32]. If mask is 0, the degree determines a default mask (see digital_impl_glfsr.cc for the mapping).
    repeat : Set to repeat sequence.
    mask : Allows a user-defined bit mask for indexes of the shift register to feed back.
    seed : Initial setting for values in shift register."







%feature("docstring") digital_make_pn_correlator_cc "PN code sequential search correlator.

Receives complex baseband signal, outputs complex correlation against reference PN code, one sample per PN code period. The PN sequence is generated using a GLFSR.

Args:
    degree : Degree of shift register must be in [1, 32]. If mask is 0, the degree determines a default mask (see digital_impl_glfsr.cc for the mapping).
    repeat : Set to repeat sequence.
    mask : Allows a user-defined bit mask for indexes of the shift register to feed back.
    seed : Initial setting for values in shift register."

%feature("docstring") digital_probe_density_b "This block maintains a running average of the input stream and makes it available as an accessor function. The input stream is type unsigned char.

If you send this block a stream of unpacked bytes, it will tell you what the bit density is.

Args:
    alpha : Average filter constant"





%feature("docstring") digital_probe_density_b::density "Returns the current density value."

%feature("docstring") digital_probe_density_b::set_alpha "Set the average filter constant."



%feature("docstring") digital_make_probe_density_b "This block maintains a running average of the input stream and makes it available as an accessor function. The input stream is type unsigned char.

If you send this block a stream of unpacked bytes, it will tell you what the bit density is.

Args:
    alpha : Average filter constant"

%feature("docstring") digital_probe_mpsk_snr_est_c "A probe for computing SNR of a signal.

This is a probe block (a sink) that can be used to monitor and retrieve estimations of the signal SNR. This probe is designed for use with M-PSK signals especially. The type of estimator is specified as the  parameter in the constructor. The estimators tend to trade off performance for accuracy, although experimentation should be done to figure out the right approach for a given implementation. Further, the current set of estimators are designed and proven theoretically under AWGN conditions; some amount of error should be assumed and/or estimated for real channel conditions.

Factory function returning shared pointer of this class

Parameters:"

%feature("docstring") digital_probe_mpsk_snr_est_c::digital_probe_mpsk_snr_est_c "Private constructor."





%feature("docstring") digital_probe_mpsk_snr_est_c::snr "Return the estimated signal-to-noise ratio in decibels."

%feature("docstring") digital_probe_mpsk_snr_est_c::type "Return the type of estimator in use."

%feature("docstring") digital_probe_mpsk_snr_est_c::msg_nsample "Return how many samples between SNR messages."

%feature("docstring") digital_probe_mpsk_snr_est_c::alpha "Get the running-average coefficient."

%feature("docstring") digital_probe_mpsk_snr_est_c::set_type "Set type of estimator to use."

%feature("docstring") digital_probe_mpsk_snr_est_c::set_msg_nsample "Set the number of samples between SNR messages."

%feature("docstring") digital_probe_mpsk_snr_est_c::set_alpha "Set the running-average coefficient."

%feature("docstring") digital_make_probe_mpsk_snr_est_c "A probe for computing SNR of a signal.

This is a probe block (a sink) that can be used to monitor and retrieve estimations of the signal SNR. This probe is designed for use with M-PSK signals especially. The type of estimator is specified as the  parameter in the constructor. The estimators tend to trade off performance for accuracy, although experimentation should be done to figure out the right approach for a given implementation. Further, the current set of estimators are designed and proven theoretically under AWGN conditions; some amount of error should be assumed and/or estimated for real channel conditions.

Factory function returning shared pointer of this class

Parameters:"

%feature("docstring") digital_scrambler_bb "Scramble an input stream using an LFSR. This block works on the LSB only of the input data stream, i.e., on an \"unpacked binary\" stream, and produces the same format on its output.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length"





%feature("docstring") digital_make_scrambler_bb "Scramble an input stream using an LFSR. This block works on the LSB only of the input data stream, i.e., on an \"unpacked binary\" stream, and produces the same format on its output.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length"

%feature("docstring") digital_simple_framer "add sync field, seq number and command field to payload

Takes in enough samples to create a full output frame. The frame is prepended with the GRSF_SYNC (defind in digital_simple_framer_sync.h) and an 8-bit sequence number.

Args:
    payload_bytesize : The size of the payload in bytes."







%feature("docstring") digital_make_simple_framer "add sync field, seq number and command field to payload

Takes in enough samples to create a full output frame. The frame is prepended with the GRSF_SYNC (defind in digital_simple_framer_sync.h) and an 8-bit sequence number.

Args:
    payload_bytesize : The size of the payload in bytes."

%feature("docstring") digital_update_crc32 "update running CRC-32

Update a running CRC with the bytes buf[0..len-1] The CRC should be initialized to all 1's, and the transmitted value is the 1's complement of the final running CRC. The resulting CRC should be transmitted in big endian order."



%feature("docstring") digital_constellation "An abstracted constellation object

The constellation objects hold the necessary information to pass around constellation information for modulators and demodulators. These objects contain the mapping between the bits and the constellation points used to represent them as well as methods for slicing the symbol space. Various implementations are possible for efficiency and ease of use.

Standard constellations (BPSK, QPSK, QAM, etc) can be inherited from this class and overloaded to perform optimized slicing and constellation mappings."



%feature("docstring") digital_constellation::map_to_points "Returns the constellation points for a symbol value."



%feature("docstring") digital_constellation::decision_maker "Returns the constellation point that matches best."

%feature("docstring") digital_constellation::decision_maker_v "Takes a vector rather than a pointer. Better for SWIG wrapping."

%feature("docstring") digital_constellation::decision_maker_pe "Also calculates the phase error."

%feature("docstring") digital_constellation::decision_maker_e "Calculates distance."

%feature("docstring") digital_constellation::calc_metric "Calculates metrics for all points in the constellation. For use with the viterbi algorithm."





%feature("docstring") digital_constellation::points "Returns the set of points in this constellation."

%feature("docstring") digital_constellation::s_points "Returns the vector of points in this constellation. Raise error if dimensionality is not one."

%feature("docstring") digital_constellation::v_points "Returns a vector of vectors of points."

%feature("docstring") digital_constellation::apply_pre_diff_code "Whether to apply an encoding before doing differential encoding. (e.g. gray coding)"

%feature("docstring") digital_constellation::set_pre_diff_code "Whether to apply an encoding before doing differential encoding. (e.g. gray coding)"

%feature("docstring") digital_constellation::pre_diff_code "Returns the encoding to apply before differential encoding."

%feature("docstring") digital_constellation::rotational_symmetry "Returns the order of rotational symmetry."

%feature("docstring") digital_constellation::dimensionality "Returns the number of complex numbers in a single symbol."













%feature("docstring") digital_constellation_sector "Sectorized digital constellation

Constellation space is divided into sectors. Each sector is associated with the nearest constellation point.

digital_constellation_sector"



%feature("docstring") digital_constellation_sector::decision_maker "Returns the constellation point that matches best."







%feature("docstring") digital_impl_glfsr "Galois Linear Feedback Shift Register using specified polynomial mask

Generates a maximal length pseudo-random sequence of length 2^degree-1."









%feature("docstring") digital_impl_mpsk_snr_est "A parent class for SNR estimators, specifically for M-PSK signals in AWGN channels."

%feature("docstring") digital_impl_mpsk_snr_est::digital_impl_mpsk_snr_est "Constructor

Parameters:"



%feature("docstring") digital_impl_mpsk_snr_est::alpha "Get the running-average coefficient."

%feature("docstring") digital_impl_mpsk_snr_est::set_alpha "Set the running-average coefficient."

%feature("docstring") digital_impl_mpsk_snr_est::update "Update the current registers."

%feature("docstring") digital_impl_mpsk_snr_est::snr "Use the register values to compute a new estimate."

%feature("docstring") digital_impl_mpsk_snr_est_m2m4 "SNR Estimator using 2nd and 4th-order moments.

An SNR estimator for M-PSK signals that uses 2nd (M2) and 4th (M4) order moments. This estimator uses knowledge of the kurtosis of the signal (k_a) and noise (k_w) to make its estimation. We use Beaulieu's approximations here to M-PSK signals and AWGN channels such that k_a=1 and k_w=2. These approximations significantly reduce the complexity of the calculations (and computations) required.

Reference: D. R. Pauluzzi and N. C. Beaulieu, \"A comparison of SNR
  estimation techniques for the AWGN channel,\" IEEE Trans. Communications, Vol. 48, No. 10, pp. 1681-1691, 2000."

%feature("docstring") digital_impl_mpsk_snr_est_m2m4::digital_impl_mpsk_snr_est_m2m4 "Constructor

Parameters:"



%feature("docstring") digital_impl_mpsk_snr_est_m2m4::update "Update the current registers."

%feature("docstring") digital_impl_mpsk_snr_est_m2m4::snr "Use the register values to compute a new estimate."

%feature("docstring") digital_impl_mpsk_snr_est_simple "SNR Estimator using simple mean/variance estimates.

A very simple SNR estimator that just uses mean and variance estimates of an M-PSK constellation. This esimator is quick and cheap and accurate for high SNR (above 7 dB or so) but quickly starts to overestimate the SNR at low SNR."

%feature("docstring") digital_impl_mpsk_snr_est_simple::digital_impl_mpsk_snr_est_simple "Constructor

Parameters:"



%feature("docstring") digital_impl_mpsk_snr_est_simple::update "Update the current registers."

%feature("docstring") digital_impl_mpsk_snr_est_simple::snr "Use the register values to compute a new estimate."

%feature("docstring") digital_impl_mpsk_snr_est_skew "SNR Estimator using skewness correction.

This is an estimator that came from a discussion between Tom Rondeau and fred harris with no known paper reference. The idea is that at low SNR, the variance estimations will be affected because of fold-over around the decision boundaries, which results in a skewness to the samples. We estimate the skewness and use this as a correcting term."

%feature("docstring") digital_impl_mpsk_snr_est_skew::digital_impl_mpsk_snr_est_skew "Constructor

Parameters:"



%feature("docstring") digital_impl_mpsk_snr_est_skew::update "Update the current registers."

%feature("docstring") digital_impl_mpsk_snr_est_skew::snr "Use the register values to compute a new estimate."

%feature("docstring") digital_impl_mpsk_snr_est_svr "Signal-to-Variation Ratio SNR Estimator.

This estimator actually comes from an SNR estimator for M-PSK signals in fading channels, but this implementation is specifically for AWGN channels. The math was simplified to assume a signal and noise kurtosis (k_a and k_w) for M-PSK signals in AWGN. These approximations significantly reduce the complexity of the calculations (and computations) required.

Original paper: A. L. Brandao, L. B. Lopes, and D. C. McLernon, \"In-service monitoring of multipath delay and cochannel interference for indoor mobile communication systems,\" Proc. IEEE Int. Conf. Communications, vol. 3, pp. 1458-1462, May 1994.

Reference: D. R. Pauluzzi and N. C. Beaulieu, \"A comparison of SNR
  estimation techniques for the AWGN channel,\" IEEE Trans. Communications, Vol. 48, No. 10, pp. 1681-1691, 2000."

%feature("docstring") digital_impl_mpsk_snr_est_svr::digital_impl_mpsk_snr_est_svr "Constructor

Parameters:"



%feature("docstring") digital_impl_mpsk_snr_est_svr::update "Update the current registers."

%feature("docstring") digital_impl_mpsk_snr_est_svr::snr "Use the register values to compute a new estimate."

%feature("docstring") digital_impl_snr_est_m2m4 "SNR Estimator using 2nd and 4th-order moments.

An SNR estimator for M-PSK signals that uses 2nd (M2) and 4th (M4) order moments. This estimator uses knowledge of the kurtosis of the signal (k_a) and noise (k_w) to make its estimation. In this case, you can set your own estimations for k_a and k_w, the kurtosis of the signal and noise, to fit this estimation better to your signal and channel conditions.

A word of warning: this estimator has not been fully tested or proved with any amount of rigor. The estimation for M4 in particular might be ignoring effectf of when k_a and k_w are different. Use this estimator with caution and a copy of the reference on hand.

The digital_mpsk_snr_est_m2m4 assumes k_a and k_w to simplify the computations for M-PSK and AWGN channels. Use that estimator unless you have a way to guess or estimate these values here.

Original paper: R. Matzner, \"An SNR estimation algorithm for complex baseband
  signal using higher order statistics,\" Facta Universitatis (Nis), no. 6, pp. 41-52, 1993.

Reference used in derivation: D. R. Pauluzzi and N. C. Beaulieu, \"A comparison of SNR
  estimation techniques for the AWGN channel,\" IEEE Trans. Communications, Vol. 48, No. 10, pp. 1681-1691, 2000."

%feature("docstring") digital_impl_snr_est_m2m4::digital_impl_snr_est_m2m4 "Constructor

Parameters:"



%feature("docstring") digital_impl_snr_est_m2m4::update "Update the current registers."

%feature("docstring") digital_impl_snr_est_m2m4::snr "Use the register values to compute a new estimate."