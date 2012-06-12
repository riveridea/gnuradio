
/*
 * This file was automatically generated using swig_doc.py.
 * 
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr_add_ff "Add streams of complex values."





%feature("docstring") gr_make_add_ff "Add streams of complex values."

%feature("docstring") gr_additive_scrambler_bb "Scramble an input stream using an LFSR. This block works on the LSB only of the input data stream, i.e., on an \"unpacked binary\" stream, and produces the same format on its output.


The scrambler works by XORing the incoming bit stream by the output of the LFSR. Optionally, after 'count' bits have been processed, the shift register is reset to the seed value. This allows processing fixed length vectors of samples.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length
    count : Number of bits after which shift register is reset, 0=never"





%feature("docstring") gr_make_additive_scrambler_bb "Scramble an input stream using an LFSR. This block works on the LSB only of the input data stream, i.e., on an \"unpacked binary\" stream, and produces the same format on its output.


The scrambler works by XORing the incoming bit stream by the output of the LFSR. Optionally, after 'count' bits have been processed, the shift register is reset to the seed value. This allows processing fixed length vectors of samples.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length
    count : Number of bits after which shift register is reset, 0=never"

%feature("docstring") gr_agc2_cc "high performance Automatic Gain Control class

For Power the absolute value of the complex number is used."





%feature("docstring") gr_make_agc2_cc "high performance Automatic Gain Control class

For Power the absolute value of the complex number is used."

%feature("docstring") gr_agc2_ff "high performance Automatic Gain Control class

Power is approximated by absolute value"





%feature("docstring") gr_make_agc2_ff "high performance Automatic Gain Control class

Power is approximated by absolute value"

%feature("docstring") gr_agc_cc "high performance Automatic Gain Control class

For Power the absolute value of the complex number is used."





%feature("docstring") gr_make_agc_cc "high performance Automatic Gain Control class

For Power the absolute value of the complex number is used."

%feature("docstring") gr_agc_ff "high performance Automatic Gain Control class

Power is approximated by absolute value"





%feature("docstring") gr_make_agc_ff "high performance Automatic Gain Control class

Power is approximated by absolute value"















%feature("docstring") gr_annotator_1to1 "1-to-1 stream annotator testing block. FOR TESTING PURPOSES ONLY.

This block creates tags to be sent downstream every 10,000 items it sees. The tags contain the name and ID of the instantiated block, use \"seq\" as a key, and have a counter that increments by 1 for every tag produced that is used as the tag's value. The tags are propagated using the 1-to-1 policy.

It also stores a copy of all tags it sees flow past it. These tags can be recalled externally with the data() member.

This block is only meant for testing and showing how to use the tags."









%feature("docstring") gr_make_annotator_1to1 "1-to-1 stream annotator testing block. FOR TESTING PURPOSES ONLY.

This block creates tags to be sent downstream every 10,000 items it sees. The tags contain the name and ID of the instantiated block, use \"seq\" as a key, and have a counter that increments by 1 for every tag produced that is used as the tag's value. The tags are propagated using the 1-to-1 policy.

It also stores a copy of all tags it sees flow past it. These tags can be recalled externally with the data() member.

This block is only meant for testing and showing how to use the tags."

%feature("docstring") gr_annotator_alltoall "All-to-all stream annotator testing block. FOR TESTING PURPOSES ONLY.

This block creates tags to be sent downstream every 10,000 items it sees. The tags contain the name and ID of the instantiated block, use \"seq\" as a key, and have a counter that increments by 1 for every tag produced that is used as the tag's value. The tags are propagated using the all-to-all policy.

It also stores a copy of all tags it sees flow past it. These tags can be recalled externally with the data() member.

This block is only meant for testing and showing how to use the tags."









%feature("docstring") gr_make_annotator_alltoall "All-to-all stream annotator testing block. FOR TESTING PURPOSES ONLY.

This block creates tags to be sent downstream every 10,000 items it sees. The tags contain the name and ID of the instantiated block, use \"seq\" as a key, and have a counter that increments by 1 for every tag produced that is used as the tag's value. The tags are propagated using the all-to-all policy.

It also stores a copy of all tags it sees flow past it. These tags can be recalled externally with the data() member.

This block is only meant for testing and showing how to use the tags."

%feature("docstring") gr_bin_statistics_f "control scanning and record frequency domain statistics"



























%feature("docstring") gr_make_bin_statistics_f "control scanning and record frequency domain statistics"

%feature("docstring") gr_burst_tagger "output[i] = input[i]"











%feature("docstring") gr_make_burst_tagger "output[i] = input[i]"

%feature("docstring") gr_bytes_to_syms "Convert stream of bytes to stream of +/- 1 symbols

input: stream of bytes; output: stream of float.

This block is deprecated.

The combination of gr_packed_to_unpacked_bb followed by gr_chunks_to_symbols_bf or gr_chunks_to_symbols_bc handles the general case of mapping from a stream of bytes into arbitrary float or complex symbols."





%feature("docstring") gr_make_bytes_to_syms "Convert stream of bytes to stream of +/- 1 symbols

input: stream of bytes; output: stream of float.

This block is deprecated.

The combination of gr_packed_to_unpacked_bb followed by gr_chunks_to_symbols_bf or gr_chunks_to_symbols_bc handles the general case of mapping from a stream of bytes into arbitrary float or complex symbols."

%feature("docstring") gr_char_to_float "Convert stream of chars to a stream of float.

Args:
    vlen : vector length of data streams.
    scale : a scalar divider to change the output signal scale."



%feature("docstring") gr_char_to_float::scale "Get the scalar divider value."

%feature("docstring") gr_char_to_float::set_scale "Set the scalar divider value."



%feature("docstring") gr_make_char_to_float "Convert stream of chars to a stream of float.

Args:
    vlen : vector length of data streams.
    scale : a scalar divider to change the output signal scale."

%feature("docstring") gr_char_to_short "Convert stream of chars to a stream of float.

Args:
    vlen : vector length of data streams."





%feature("docstring") gr_make_char_to_short "Convert stream of chars to a stream of float.

Args:
    vlen : vector length of data streams."

%feature("docstring") gr_check_counting_s "sink that checks if its input stream consists of a counting sequence.

This sink is typically used to test the USRP \"Counting Mode\" or \"Counting mode 32 bit\".

Args:
    do_32bit : expect an interleaved 32 bit counter in stead of 16 bit counter (default false)"

























%feature("docstring") gr_make_check_counting_s "sink that checks if its input stream consists of a counting sequence.

This sink is typically used to test the USRP \"Counting Mode\" or \"Counting mode 32 bit\".

Args:
    do_32bit : expect an interleaved 32 bit counter in stead of 16 bit counter (default false)"

%feature("docstring") gr_check_lfsr_32k_s "sink that checks if its input stream consists of a lfsr_32k sequence.

This sink is typically used along with gr_lfsr_32k_source_s to test the USRP using its digital loopback mode."































%feature("docstring") gr_make_check_lfsr_32k_s "sink that checks if its input stream consists of a lfsr_32k sequence.

This sink is typically used along with gr_lfsr_32k_source_s to test the USRP using its digital loopback mode."

%feature("docstring") gr_complex_to_arg "complex in, angle out (float)

Args:
    vlen : vector len (default 1)"





%feature("docstring") gr_make_complex_to_arg "complex in, angle out (float)

Args:
    vlen : vector len (default 1)"

%feature("docstring") gr_complex_to_float "convert a stream of gr_complex to 1 or 2 streams of float

Args:
    vlen : vector len (default 1)"





%feature("docstring") gr_make_complex_to_float "convert a stream of gr_complex to 1 or 2 streams of float

Args:
    vlen : vector len (default 1)"

%feature("docstring") gr_complex_to_imag "complex in, imaginary out (float)

Args:
    vlen : vector len (default 1)"





%feature("docstring") gr_make_complex_to_imag "complex in, imaginary out (float)

Args:
    vlen : vector len (default 1)"

%feature("docstring") gr_complex_to_interleaved_short "Convert stream of complex to a stream of interleaved shorts."





%feature("docstring") gr_make_complex_to_interleaved_short "Convert stream of complex to a stream of interleaved shorts."

%feature("docstring") gr_complex_to_mag "complex in, magnitude out (float)

Args:
    vlen : vector len (default 1)"





%feature("docstring") gr_make_complex_to_mag "complex in, magnitude out (float)

Args:
    vlen : vector len (default 1)"

%feature("docstring") gr_complex_to_mag_squared "complex in, magnitude squared out (float)

Args:
    vlen : vector len (default 1)"





%feature("docstring") gr_make_complex_to_mag_squared "complex in, magnitude squared out (float)

Args:
    vlen : vector len (default 1)"

%feature("docstring") gr_complex_to_real "complex in, real out (float)

Args:
    vlen : vector len (default 1)"





%feature("docstring") gr_make_complex_to_real "complex in, real out (float)

Args:
    vlen : vector len (default 1)"

%feature("docstring") gr_conjugate_cc "output = complex conjugate of input"





%feature("docstring") gr_make_conjugate_cc "output = complex conjugate of input"

%feature("docstring") gr_copy "output[i] = input[i]

When enabled (default), this block copies its input to its output. When disabled, this block drops its input on the floor."











%feature("docstring") gr_make_copy "output[i] = input[i]

When enabled (default), this block copies its input to its output. When disabled, this block drops its input on the floor."

%feature("docstring") gr_correlate_access_code_tag_bb "Examine input for specified access code, one bit at a time.

input: stream of bits, 1 bit per input byte (data in LSB) output: unaltered stream of bits (plus tags)

This block annotates the input stream with tags. The tags have key name [tag_name], specified in the constructor. Used for searching an input data stream for preambles, etc."









%feature("docstring") gr_make_correlate_access_code_tag_bb "Examine input for specified access code, one bit at a time.

input: stream of bits, 1 bit per input byte (data in LSB) output: unaltered stream of bits (plus tags)

This block annotates the input stream with tags. The tags have key name [tag_name], specified in the constructor. Used for searching an input data stream for preambles, etc."

%feature("docstring") gr_cpfsk_bc "Perform continuous phase 2-level frequency shift keying modulation on an input stream of unpacked bits.

Args:
    k : modulation index
    ampl : output amplitude
    samples_per_sym : number of output samples per input bit"









%feature("docstring") gr_make_cpfsk_bc "Perform continuous phase 2-level frequency shift keying modulation on an input stream of unpacked bits.

Args:
    k : modulation index
    ampl : output amplitude
    samples_per_sym : number of output samples per input bit"

%feature("docstring") gr_ctcss_squelch_ff "gate or zero output if ctcss tone not present"

















%feature("docstring") gr_make_ctcss_squelch_ff "gate or zero output if ctcss tone not present"

%feature("docstring") gr_decode_ccsds_27_fb "A rate 1/2, k=7 convolutional decoder for the CCSDS standard

This block performs soft-decision convolutional decoding using the Viterbi algorithm.

The input is a stream of (possibly noise corrupted) floating point values nominally spanning [-1.0, 1.0], representing the encoded channel symbols 0 (-1.0) and 1 (1.0), with erased symbols at 0.0.

The output is MSB first packed bytes of decoded values.

As a rate 1/2 code, there will be one output byte for every 16 input symbols.

This block is designed for continuous data streaming, not packetized data. The first 32 bits out will be zeroes, with the output delayed four bytes from the corresponding inputs."







%feature("docstring") gr_make_decode_ccsds_27_fb "A rate 1/2, k=7 convolutional decoder for the CCSDS standard

This block performs soft-decision convolutional decoding using the Viterbi algorithm.

The input is a stream of (possibly noise corrupted) floating point values nominally spanning [-1.0, 1.0], representing the encoded channel symbols 0 (-1.0) and 1 (1.0), with erased symbols at 0.0.

The output is MSB first packed bytes of decoded values.

As a rate 1/2 code, there will be one output byte for every 16 input symbols.

This block is designed for continuous data streaming, not packetized data. The first 32 bits out will be zeroes, with the output delayed four bytes from the corresponding inputs."

%feature("docstring") gr_deinterleave "deinterleave a single input into N outputs"









%feature("docstring") gr_make_deinterleave "deinterleave a single input into N outputs"

%feature("docstring") gr_delay "delay the input by a certain number of samples"











%feature("docstring") gr_make_delay "delay the input by a certain number of samples"

%feature("docstring") gr_descrambler_bb "Descramble an input stream using an LFSR. This block works on the LSB only of the input data stream, i.e., on an \"unpacked binary\" stream, and produces the same format on its output.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length"





%feature("docstring") gr_make_descrambler_bb "Descramble an input stream using an LFSR. This block works on the LSB only of the input data stream, i.e., on an \"unpacked binary\" stream, and produces the same format on its output.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length"

%feature("docstring") gr_diff_decoder_bb "y[0] = (x[0] - x[-1]) % M

Differential decoder"





%feature("docstring") gr_make_diff_decoder_bb "y[0] = (x[0] - x[-1]) % M

Differential decoder"

%feature("docstring") gr_diff_encoder_bb "y[0] = (x[0] + y[-1]) % M

Differential encoder"





%feature("docstring") gr_make_diff_encoder_bb "y[0] = (x[0] + y[-1]) % M

Differential encoder"











%feature("docstring") gr_dpll_bb "Detect the peak of a signal

If a peak is detected, this block outputs a 1, or it outputs 0's."





%feature("docstring") gr_make_dpll_bb "Detect the peak of a signal

If a peak is detected, this block outputs a 1, or it outputs 0's."

%feature("docstring") gr_encode_ccsds_27_bb "A rate 1/2, k=7 convolutional encoder for the CCSDS standard

This block performs convolutional encoding using the CCSDS standard polynomial (\"Voyager\").

The input is an MSB first packed stream of bits.

The output is a stream of symbols 0 or 1 representing the encoded data.

As a rate 1/2 code, there will be 16 output symbols for every input byte.

This block is designed for continuous data streaming, not packetized data. There is no provision to \"flush\" the encoder."







%feature("docstring") gr_make_encode_ccsds_27_bb "A rate 1/2, k=7 convolutional encoder for the CCSDS standard

This block performs convolutional encoding using the CCSDS standard polynomial (\"Voyager\").

The input is an MSB first packed stream of bits.

The output is a stream of symbols 0 or 1 representing the encoded data.

As a rate 1/2 code, there will be 16 output symbols for every input byte.

This block is designed for continuous data streaming, not packetized data. There is no provision to \"flush\" the encoder."

%feature("docstring") gr_fake_channel_decoder_pp "remove fake padding from packet

input: stream of byte vectors; output: stream of byte vectors"







%feature("docstring") gr_make_fake_channel_decoder_pp "remove fake padding from packet

input: stream of byte vectors; output: stream of byte vectors"

%feature("docstring") gr_fake_channel_encoder_pp "pad packet with alternating 1,0 pattern.

input: stream of byte vectors; output: stream of byte vectors"







%feature("docstring") gr_make_fake_channel_encoder_pp "pad packet with alternating 1,0 pattern.

input: stream of byte vectors; output: stream of byte vectors"

%feature("docstring") gr_feedforward_agc_cc "Non-causal AGC which computes required gain based on max absolute value over nsamples."







%feature("docstring") gr_make_feedforward_agc_cc "Non-causal AGC which computes required gain based on max absolute value over nsamples."

%feature("docstring") gr_fft_vcc "Compute forward or reverse FFT. complex vector in / complex vector out.

Abstract base class."











%feature("docstring") gr_make_fft_vcc "Compute forward or reverse FFT. complex vector in / complex vector out.

Abstract base class."

%feature("docstring") gr_fft_vcc_fftw "Compute forward or reverse FFT. complex vector in / complex vector out.

Concrete class that uses FFTW."











%feature("docstring") gr_make_fft_vcc_fftw "Compute forward or reverse FFT. complex vector in / complex vector out.

Concrete class that uses FFTW."

%feature("docstring") gr_fft_vfc "Compute forward FFT. float vector in / complex vector out."













%feature("docstring") gr_make_fft_vfc "Compute forward FFT. float vector in / complex vector out."

%feature("docstring") gr_float_to_char "Convert stream of float to a stream of char.

Args:
    vlen : vector length of data streams.
    scale : a scalar multiplier to change the output signal scale."



%feature("docstring") gr_float_to_char::scale "Get the scalar multiplier value."

%feature("docstring") gr_float_to_char::set_scale "Set the scalar multiplier value."



%feature("docstring") gr_make_float_to_char "Convert stream of float to a stream of char.

Args:
    vlen : vector length of data streams.
    scale : a scalar multiplier to change the output signal scale."

%feature("docstring") gr_float_to_complex "Convert 1 or 2 streams of float to a stream of gr_complex."





%feature("docstring") gr_make_float_to_complex "Convert 1 or 2 streams of float to a stream of gr_complex."

%feature("docstring") gr_float_to_int "Convert stream of float to a stream of short.

Args:
    vlen : vector length of data streams.
    scale : a scalar multiplier to change the output signal scale."



%feature("docstring") gr_float_to_int::scale "Get the scalar multiplier value."

%feature("docstring") gr_float_to_int::set_scale "Set the scalar multiplier value."



%feature("docstring") gr_make_float_to_int "Convert stream of float to a stream of short.

Args:
    vlen : vector length of data streams.
    scale : a scalar multiplier to change the output signal scale."

%feature("docstring") gr_float_to_short "Convert stream of float to a stream of short.

Args:
    vlen : vector length of data streams.
    scale : a scalar multiplier to change the output signal scale."



%feature("docstring") gr_float_to_short::scale "Get the scalar multiplier value."

%feature("docstring") gr_float_to_short::set_scale "Set the scalar multiplier value."



%feature("docstring") gr_make_float_to_short "Convert stream of float to a stream of short.

Args:
    vlen : vector length of data streams.
    scale : a scalar multiplier to change the output signal scale."

%feature("docstring") gr_float_to_uchar "Convert stream of float to a stream of unsigned char."





%feature("docstring") gr_make_float_to_uchar "Convert stream of float to a stream of unsigned char."

%feature("docstring") gr_fmdet_cf "Implements an IQ slope detector.

input: stream of complex; output: stream of floats

This implements a limiting slope detector. The limiter is in the normalization by the magnitude of the sample"





%feature("docstring") gr_make_fmdet_cf "Implements an IQ slope detector.

input: stream of complex; output: stream of floats

This implements a limiting slope detector. The limiter is in the normalization by the magnitude of the sample"

%feature("docstring") gr_framer_sink_1 "Given a stream of bits and access_code flags, assemble packets.

input: stream of bytes from gr_correlate_access_code_bb output: none. Pushes assembled packet into target queue.

The framer expects a fixed length header of 2 16-bit shorts containing the payload length, followed by the payload. If the 2 16-bit shorts are not identical, this packet is ignored. Better algs are welcome.

The input data consists of bytes that have two bits used. Bit 0, the LSB, contains the data bit. Bit 1 if set, indicates that the corresponding bit is the the first bit of the packet. That is, this bit is the first one after the access code."

















%feature("docstring") gr_make_framer_sink_1 "Given a stream of bits and access_code flags, assemble packets.

input: stream of bytes from gr_correlate_access_code_bb output: none. Pushes assembled packet into target queue.

The framer expects a fixed length header of 2 16-bit shorts containing the payload length, followed by the payload. If the 2 16-bit shorts are not identical, this packet is ignored. Better algs are welcome.

The input data consists of bytes that have two bits used. Bit 0, the LSB, contains the data bit. Bit 1 if set, indicates that the corresponding bit is the the first bit of the packet. That is, this bit is the first one after the access code."

%feature("docstring") gr_frequency_modulator_fc "Frequency modulator block

float input; complex baseband output."









%feature("docstring") gr_make_frequency_modulator_fc "Frequency modulator block

float input; complex baseband output."

%feature("docstring") gr_glfsr_source_b "Galois LFSR pseudo-random source."











%feature("docstring") gr_make_glfsr_source_b "Galois LFSR pseudo-random source."

%feature("docstring") gr_glfsr_source_f "Galois LFSR pseudo-random source generating float outputs -1.0 - 1.0."











%feature("docstring") gr_make_glfsr_source_f "Galois LFSR pseudo-random source generating float outputs -1.0 - 1.0."

%feature("docstring") gr_head "copies the first N items to the output then signals done

Useful for building test cases"









%feature("docstring") gr_make_head "copies the first N items to the output then signals done

Useful for building test cases"

%feature("docstring") gr_int_to_float "Convert stream of int to a stream of float.

Args:
    vlen : vector length of data streams.
    scale : a scalar divider to change the output signal scale."



%feature("docstring") gr_int_to_float::scale "Get the scalar divider value."

%feature("docstring") gr_int_to_float::set_scale "Set the scalar divider value."



%feature("docstring") gr_make_int_to_float "Convert stream of int to a stream of float.

Args:
    vlen : vector length of data streams.
    scale : a scalar divider to change the output signal scale."

%feature("docstring") gr_interleave "interleave N inputs to a single output"









%feature("docstring") gr_make_interleave "interleave N inputs to a single output"

%feature("docstring") gr_interleaved_short_to_complex "Convert stream of interleaved shorts to a stream of complex."





%feature("docstring") gr_make_interleaved_short_to_complex "Convert stream of interleaved shorts to a stream of complex."













%feature("docstring") gr_keep_m_in_n "decimate a stream, keeping one item out of every n."







%feature("docstring") gr_make_keep_m_in_n "decimate a stream, keeping one item out of every n."

%feature("docstring") gr_keep_one_in_n "decimate a stream, keeping one item out of every n."







%feature("docstring") gr_make_keep_one_in_n "decimate a stream, keeping one item out of every n."

%feature("docstring") gr_kludge_copy "output[i] = input[i]

This is a short term kludge to work around a problem with the hierarchical block impl."







%feature("docstring") gr_make_kludge_copy "output[i] = input[i]

This is a short term kludge to work around a problem with the hierarchical block impl."

%feature("docstring") gr_lfsr_32k_source_s "LFSR pseudo-random source with period of 2^15 bits (2^11 shorts)

This source is typically used along with gr_check_lfsr_32k_s to test the USRP using its digital loopback mode."





%feature("docstring") gr_make_lfsr_32k_source_s "LFSR pseudo-random source with period of 2^15 bits (2^11 shorts)

This source is typically used along with gr_check_lfsr_32k_s to test the USRP using its digital loopback mode."

%feature("docstring") gr_map_bb "output[i] = map[input[i]]"





%feature("docstring") gr_make_map_bb "output[i] = map[input[i]]"

%feature("docstring") gr_multiply_cc "Multiply streams of complex values."





%feature("docstring") gr_make_multiply_cc "Multiply streams of complex values."

%feature("docstring") gr_multiply_conjugate_cc "Multiplies a stream by the conjugate of the second stream."





%feature("docstring") gr_make_multiply_conjugate_cc "Multiplies a stream by the conjugate of the second stream."

%feature("docstring") gr_multiply_const_cc "Multiply stream of complex values with a constant ."









%feature("docstring") gr_make_multiply_const_cc "Multiply stream of complex values with a constant ."

%feature("docstring") gr_multiply_const_ff "Multiply stream of float values with a constant ."









%feature("docstring") gr_make_multiply_const_ff "Multiply stream of float values with a constant ."

%feature("docstring") gr_multiply_ff "Multiply streams of complex values."





%feature("docstring") gr_make_multiply_ff "Multiply streams of complex values."

%feature("docstring") gr_nlog10_ff "output = n*log10(input) + k"







%feature("docstring") gr_make_nlog10_ff "output = n*log10(input) + k"

%feature("docstring") gr_nop "Does nothing. Used for testing only."









%feature("docstring") gr_make_nop "Does nothing. Used for testing only."

%feature("docstring") gr_null_sink "Bit bucket."





%feature("docstring") gr_make_null_sink "Bit bucket."

%feature("docstring") gr_null_source "A source of zeros."





%feature("docstring") gr_make_null_source "A source of zeros."

%feature("docstring") gr_ofdm_bpsk_demapper "take a vector of complex constellation points in from an FFT and demodulate to a stream of bits. Simple BPSK version."











%feature("docstring") gr_make_ofdm_bpsk_demapper "take a vector of complex constellation points in from an FFT and demodulate to a stream of bits. Simple BPSK version."

%feature("docstring") gr_ofdm_frame_sink2 "Takes an OFDM symbol in, demaps it into bits of 0's and 1's, packs them into packets, and sends to to a message queue sink.

NOTE: The mod input parameter simply chooses a pre-defined demapper/slicer. Eventually, we want to be able to pass in a reference to an object to do the demapping and slicing for a given modulation type."



















%feature("docstring") gr_make_ofdm_frame_sink2 "Takes an OFDM symbol in, demaps it into bits of 0's and 1's, packs them into packets, and sends to to a message queue sink.

NOTE: The mod input parameter simply chooses a pre-defined demapper/slicer. Eventually, we want to be able to pass in a reference to an object to do the demapping and slicing for a given modulation type."

%feature("docstring") gr_pa_2x2_phase_combiner "pa_2x2 phase combiner

Anntenas are arranged like this:

2 3 0 1

dx and dy are lambda/2."









%feature("docstring") gr_make_pa_2x2_phase_combiner "pa_2x2 phase combiner

Anntenas are arranged like this:

2 3 0 1

dx and dy are lambda/2."

%feature("docstring") gr_pack_k_bits_bb "Converts a stream of bytes with 1 bit in the LSB to a byte with k relevent bits."







%feature("docstring") gr_make_pack_k_bits_bb "Converts a stream of bytes with 1 bit in the LSB to a byte with k relevent bits."

%feature("docstring") gr_packet_sink "process received bits looking for packet sync, header, and process bits into packet"



















%feature("docstring") gr_packet_sink::carrier_sensed "return true if we detect carrier"

%feature("docstring") gr_make_packet_sink "process received bits looking for packet sync, header, and process bits into packet"

%feature("docstring") gr_peak_detector2_fb "Detect the peak of a signal

If a peak is detected, this block outputs a 1, or it outputs 0's. A separate debug output may be connected, to view the internal EWMA described below.

Args:
    threshold_factor_rise : The threshold factor determins when a peak is present. An EWMA average of the signal is calculated and when the value of the signal goes over threshold_factor_rise*average, we call the peak.
    look_ahead : The look-ahead value is used when the threshold is found to locate the peak within this range.
    alpha : The gain value of a single-pole moving average filter"



%feature("docstring") gr_peak_detector2_fb::set_threshold_factor_rise "Set the threshold factor value for the rise time."

%feature("docstring") gr_peak_detector2_fb::set_look_ahead "Set the look-ahead factor."

%feature("docstring") gr_peak_detector2_fb::set_alpha "Set the running average alpha."

%feature("docstring") gr_peak_detector2_fb::threshold_factor_rise "Get the threshold factor value for the rise time."

%feature("docstring") gr_peak_detector2_fb::look_ahead "Get the look-ahead factor value."

%feature("docstring") gr_peak_detector2_fb::alpha "Get the alpha value of the running average."



%feature("docstring") gr_make_peak_detector2_fb "Detect the peak of a signal

If a peak is detected, this block outputs a 1, or it outputs 0's. A separate debug output may be connected, to view the internal EWMA described below.

Args:
    threshold_factor_rise : The threshold factor determins when a peak is present. An EWMA average of the signal is calculated and when the value of the signal goes over threshold_factor_rise*average, we call the peak.
    look_ahead : The look-ahead value is used when the threshold is found to locate the peak within this range.
    alpha : The gain value of a single-pole moving average filter"

%feature("docstring") gr_phase_modulator_fc "Phase modulator block

output=complex(cos(in*sensitivity),sin(in*sensitivity))"





%feature("docstring") gr_make_phase_modulator_fc "Phase modulator block

output=complex(cos(in*sensitivity),sin(in*sensitivity))"

%feature("docstring") gr_pll_carriertracking_cc "Implements a PLL which locks to the input frequency and outputs the input signal mixed with that carrier.

input: stream of complex; output: stream of complex.

This PLL locks onto a [possibly noisy] reference carrier on the input and outputs that signal, downconverted to DC

All settings max_freq and min_freq are in terms of radians per sample, NOT HERTZ. The loop bandwidth determins the lock range and should be set around pi/200 -- 2pi/100."















%feature("docstring") gr_make_pll_carriertracking_cc "Implements a PLL which locks to the input frequency and outputs the input signal mixed with that carrier.

input: stream of complex; output: stream of complex.

This PLL locks onto a [possibly noisy] reference carrier on the input and outputs that signal, downconverted to DC

All settings max_freq and min_freq are in terms of radians per sample, NOT HERTZ. The loop bandwidth determins the lock range and should be set around pi/200 -- 2pi/100."

%feature("docstring") gr_pll_freqdet_cf "Implements a PLL which locks to the input frequency and outputs an estimate of that frequency. Useful for FM Demod.

input: stream of complex; output: stream of floats.

This PLL locks onto a [possibly noisy] reference carrier on the input and outputs an estimate of that frequency in radians per sample. All settings max_freq and min_freq are in terms of radians per sample, NOT HERTZ. The loop bandwidth determins the lock range and should be set around pi/200 -- 2pi/100."









%feature("docstring") gr_make_pll_freqdet_cf "Implements a PLL which locks to the input frequency and outputs an estimate of that frequency. Useful for FM Demod.

input: stream of complex; output: stream of floats.

This PLL locks onto a [possibly noisy] reference carrier on the input and outputs an estimate of that frequency in radians per sample. All settings max_freq and min_freq are in terms of radians per sample, NOT HERTZ. The loop bandwidth determins the lock range and should be set around pi/200 -- 2pi/100."

%feature("docstring") gr_pll_refout_cc "Implements a PLL which locks to the input frequency and outputs a carrier

input: stream of complex; output: stream of complex.

This PLL locks onto a [possibly noisy] reference carrier on the input and outputs a clean version which is phase and frequency aligned to it.

All settings max_freq and min_freq are in terms of radians per sample, NOT HERTZ. The loop bandwidth determins the lock range and should be set around pi/200 -- 2pi/100."









%feature("docstring") gr_make_pll_refout_cc "Implements a PLL which locks to the input frequency and outputs a carrier

input: stream of complex; output: stream of complex.

This PLL locks onto a [possibly noisy] reference carrier on the input and outputs a clean version which is phase and frequency aligned to it.

All settings max_freq and min_freq are in terms of radians per sample, NOT HERTZ. The loop bandwidth determins the lock range and should be set around pi/200 -- 2pi/100."

%feature("docstring") gr_pn_correlator_cc "PN code sequential search correlator.

Receives complex baseband signal, outputs complex correlation against reference PN code, one sample per PN code period"







%feature("docstring") gr_make_pn_correlator_cc "PN code sequential search correlator.

Receives complex baseband signal, outputs complex correlation against reference PN code, one sample per PN code period"

%feature("docstring") gr_probe_avg_mag_sqrd_c "compute avg magnitude squared.

input: gr_complex

Compute a running average of the magnitude squared of the the input. The level and indication as to whether the level exceeds threshold can be retrieved with the level and unmuted accessors."

















%feature("docstring") gr_make_probe_avg_mag_sqrd_c "compute avg magnitude squared.

input: gr_complex

Compute a running average of the magnitude squared of the the input. The level and indication as to whether the level exceeds threshold can be retrieved with the level and unmuted accessors."

%feature("docstring") gr_probe_avg_mag_sqrd_cf "compute avg magnitude squared.

input: gr_complex output: gr_float

Compute a running average of the magnitude squared of the the input. The level and indication as to whether the level exceeds threshold can be retrieved with the level and unmuted accessors."

















%feature("docstring") gr_make_probe_avg_mag_sqrd_cf "compute avg magnitude squared.

input: gr_complex output: gr_float

Compute a running average of the magnitude squared of the the input. The level and indication as to whether the level exceeds threshold can be retrieved with the level and unmuted accessors."

%feature("docstring") gr_probe_avg_mag_sqrd_f "compute avg magnitude squared.

input: float

Compute a running average of the magnitude squared of the the input. The level and indication as to whether the level exceeds threshold can be retrieved with the level and unmuted accessors."

















%feature("docstring") gr_make_probe_avg_mag_sqrd_f "compute avg magnitude squared.

input: float

Compute a running average of the magnitude squared of the the input. The level and indication as to whether the level exceeds threshold can be retrieved with the level and unmuted accessors."

%feature("docstring") gr_probe_density_b "This block maintains a running average of the input stream and makes it available as an accessor function. The input stream is type unsigned char.

If you send this block a stream of unpacked bytes, it will tell you what the bit density is.

Args:
    alpha : Average filter constant"





%feature("docstring") gr_probe_density_b::density "Returns the current density value."

%feature("docstring") gr_probe_density_b::set_alpha "Set the average filter constant."



%feature("docstring") gr_make_probe_density_b "This block maintains a running average of the input stream and makes it available as an accessor function. The input stream is type unsigned char.

If you send this block a stream of unpacked bytes, it will tell you what the bit density is.

Args:
    alpha : Average filter constant"

%feature("docstring") gr_pwr_squelch_cc "gate or zero output when input power below threshold"















%feature("docstring") gr_make_pwr_squelch_cc "gate or zero output when input power below threshold"

%feature("docstring") gr_pwr_squelch_ff "gate or zero output when input power below threshold"















%feature("docstring") gr_make_pwr_squelch_ff "gate or zero output when input power below threshold"

%feature("docstring") gr_quadrature_demod_cf "quadrature demodulator: complex in, float out

This can be used to demod FM, FSK, GMSK, etc. The input is complex baseband."









%feature("docstring") gr_make_quadrature_demod_cf "quadrature demodulator: complex in, float out

This can be used to demod FM, FSK, GMSK, etc. The input is complex baseband."

















%feature("docstring") gr_regenerate_bb "Detect the peak of a signal and repeat every period samples

If a peak is detected, this block outputs a 1 repeated every period samples until reset by detection of another 1 on the input or stopped after max_regen regenerations have occurred.

Note that if max_regen=(-1)/ULONG_MAX then the regeneration will run forever."



%feature("docstring") gr_regenerate_bb::set_max_regen "Reset the maximum regeneration count; this will reset the current regen."

%feature("docstring") gr_regenerate_bb::set_period "Reset the period of regenerations; this will reset the current regen."



%feature("docstring") gr_make_regenerate_bb "Detect the peak of a signal and repeat every period samples

If a peak is detected, this block outputs a 1 repeated every period samples until reset by detection of another 1 on the input or stopped after max_regen regenerations have occurred.

Note that if max_regen=(-1)/ULONG_MAX then the regeneration will run forever."

%feature("docstring") gr_repeat "Repeat a sample 'interp' times in output stream."







%feature("docstring") gr_make_repeat "Repeat a sample 'interp' times in output stream."

%feature("docstring") gr_rms_cf "RMS average power."











%feature("docstring") gr_make_rms_cf "RMS average power."

%feature("docstring") gr_rms_ff "RMS average power."











%feature("docstring") gr_make_rms_ff "RMS average power."

%feature("docstring") gr_scrambler_bb "Scramble an input stream using an LFSR. This block works on the LSB only of the input data stream, i.e., on an \"unpacked binary\" stream, and produces the same format on its output.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length"





%feature("docstring") gr_make_scrambler_bb "Scramble an input stream using an LFSR. This block works on the LSB only of the input data stream, i.e., on an \"unpacked binary\" stream, and produces the same format on its output.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length"

%feature("docstring") gr_short_to_char "Convert stream of short to a stream of float.

Args:
    vlen : vector length of data streams."





%feature("docstring") gr_make_short_to_char "Convert stream of short to a stream of float.

Args:
    vlen : vector length of data streams."

%feature("docstring") gr_short_to_float "Convert stream of short to a stream of float.

Args:
    vlen : vector length of data streams.
    scale : a scalar divider to change the output signal scale."



%feature("docstring") gr_short_to_float::scale "Get the scalar divider value."

%feature("docstring") gr_short_to_float::set_scale "Set the scalar divider value."



%feature("docstring") gr_make_short_to_float "Convert stream of short to a stream of float.

Args:
    vlen : vector length of data streams.
    scale : a scalar divider to change the output signal scale."

%feature("docstring") gr_simple_correlator "inverse of gr_simple_framer (more or less)"





















%feature("docstring") gr_make_simple_correlator "inverse of gr_simple_framer (more or less)"

%feature("docstring") gr_simple_framer "add sync field, seq number and command field to payload"







%feature("docstring") gr_make_simple_framer "add sync field, seq number and command field to payload"

%feature("docstring") gr_simple_squelch_cc "simple squelch block based on average signal power and threshold in dB."

















%feature("docstring") gr_make_simple_squelch_cc "simple squelch block based on average signal power and threshold in dB."

%feature("docstring") gr_skiphead "skips the first N items, from then on copies items to the output

Useful for building test cases and sources which have metadata or junk at the start"





%feature("docstring") gr_make_skiphead "skips the first N items, from then on copies items to the output

Useful for building test cases and sources which have metadata or junk at the start"

%feature("docstring") gr_stream_mux "Stream muxing block to multiplex many streams into one with a specified format.

Muxes N streams together producing an output stream that contains N0 items from the first stream, N1 items from the second, etc. and repeats:

[N0, N1, N2, ..., Nm, N0, N1, ...]"











%feature("docstring") gr_make_stream_mux "Stream muxing block to multiplex many streams into one with a specified format.

Muxes N streams together producing an output stream that contains N0 items from the first stream, N1 items from the second, etc. and repeats:

[N0, N1, N2, ..., Nm, N0, N1, ...]"

%feature("docstring") gr_stream_to_streams "convert a stream of items into a N streams of items

Converts a stream of N items into N streams of 1 item. Repeat ad infinitum."





%feature("docstring") gr_make_stream_to_streams "convert a stream of items into a N streams of items

Converts a stream of N items into N streams of 1 item. Repeat ad infinitum."

%feature("docstring") gr_stream_to_vector "convert a stream of items into a stream of blocks containing nitems_per_block"





%feature("docstring") gr_make_stream_to_vector "convert a stream of items into a stream of blocks containing nitems_per_block"

%feature("docstring") gr_streams_to_stream "Convert N streams of 1 item into a 1 stream of N items

Convert N streams of 1 item into 1 stream of N items. Repeat ad infinitum."





%feature("docstring") gr_make_streams_to_stream "Convert N streams of 1 item into a 1 stream of N items

Convert N streams of 1 item into 1 stream of N items. Repeat ad infinitum."

%feature("docstring") gr_streams_to_vector "convert N streams of items to 1 stream of vector length N"





%feature("docstring") gr_make_streams_to_vector "convert N streams of items to 1 stream of vector length N"















%feature("docstring") gr_test "Test class for testing runtime system (setting up buffers and such.)

This block does not do any usefull actual data processing. It just exposes setting all standard block parameters using the contructor or public methods.

This block can be usefull when testing the runtime system. You can force this block to have a large history, decimation factor and/or large output_multiple. The runtime system should detect this and create large enough buffers all through the signal chain."





%feature("docstring") gr_test::forecast "Estimate input requirements given output request.

Given a request to product , estimate the number of data items required on each input stream. The estimate doesn't have to be exact, but should be close."

%feature("docstring") gr_test::set_check_topology "Force check topology to return true or false."

%feature("docstring") gr_test::check_topology "Confirm that ninputs and noutputs is an acceptable combination.

This function is called by the runtime system whenever the topology changes. Most classes do not need to override this. This check is in addition to the constraints specified by the input and output gr_io_signatures."

%feature("docstring") gr_test::fixed_rate_ninput_to_noutput "Given ninput samples, return number of output samples that will be produced. N.B. this is only defined if fixed_rate returns true. Generally speaking, you don't need to override this."

%feature("docstring") gr_test::fixed_rate_noutput_to_ninput "Given noutput samples, return number of input samples required to produce noutput. N.B. this is only defined if fixed_rate returns true."

%feature("docstring") gr_test::set_fixed_rate_public "Set if fixed rate should return true. N.B. This is normally a private method but we make it available here as public."

%feature("docstring") gr_test::set_consume_type "Set the consume pattern."

%feature("docstring") gr_test::set_consume_limit "Set the consume limit."

%feature("docstring") gr_test::set_produce_type "Set the produce pattern."

%feature("docstring") gr_test::set_produce_limit "Set the produce limit."



%feature("docstring") gr_make_test "Test class for testing runtime system (setting up buffers and such.)

This block does not do any usefull actual data processing. It just exposes setting all standard block parameters using the contructor or public methods.

This block can be usefull when testing the runtime system. You can force this block to have a large history, decimation factor and/or large output_multiple. The runtime system should detect this and create large enough buffers all through the signal chain."

%feature("docstring") gr_threshold_ff "Please fix my documentation."

















%feature("docstring") gr_make_threshold_ff "Please fix my documentation."

%feature("docstring") gr_throttle "throttle flow of samples such that the average rate does not exceed samples_per_sec.

input: one stream of itemsize; output: one stream of itemsize

N.B. this should only be used in GUI apps where there is no other rate limiting block. It is not intended nor effective at precisely controlling the rate of samples. That should be controlled by a source or sink tied to sample clock. E.g., a USRP or audio card."

%feature("docstring") gr_throttle::set_sample_rate "Sets the sample rate in samples per second."

%feature("docstring") gr_make_throttle "throttle flow of samples such that the average rate does not exceed samples_per_sec.

input: one stream of itemsize; output: one stream of itemsize

N.B. this should only be used in GUI apps where there is no other rate limiting block. It is not intended nor effective at precisely controlling the rate of samples. That should be controlled by a source or sink tied to sample clock. E.g., a USRP or audio card."

%feature("docstring") gr_transcendental "A block that performs various transcendental math operations.

Possible function names can be found in the cmath library. IO may be either complex or real, double or single precision.

Possible type strings: float, double, complex_float, complex_double

output[i] = trans_fcn(input[i])"

%feature("docstring") gr_make_transcendental "A block that performs various transcendental math operations.

Possible function names can be found in the cmath library. IO may be either complex or real, double or single precision.

Possible type strings: float, double, complex_float, complex_double

output[i] = trans_fcn(input[i])"

%feature("docstring") gr_uchar_to_float "Convert stream of unsigned chars to a stream of float."





%feature("docstring") gr_make_uchar_to_float "Convert stream of unsigned chars to a stream of float."

%feature("docstring") gr_unpack_k_bits_bb "Converts a byte with k relevent bits to k output bytes with 1 bit in the LSB."







%feature("docstring") gr_make_unpack_k_bits_bb "Converts a byte with k relevent bits to k output bytes with 1 bit in the LSB."

%feature("docstring") gr_vco_f "VCO - Voltage controlled oscillator

input: float stream of control voltages; output: float oscillator output."

%feature("docstring") gr_vco_f::gr_vco_f "VCO - Voltage controlled oscillator."



%feature("docstring") gr_make_vco_f "VCO - Voltage controlled oscillator

input: float stream of control voltages; output: float oscillator output."

%feature("docstring") gr_vector_map "Maps elements from a set of input vectors to a set of output vectors.

If in[i] is the input vector in the i'th stream then the output vector in the j'th stream is:

out[j][k] = in[mapping[j][k][0]][mapping[j][k][1]]

That is mapping is of the form (out_stream1_mapping, out_stream2_mapping, ...) and out_stream1_mapping is of the form (element1_mapping, element2_mapping, ...) and element1_mapping is of the form (in_stream, in_element).

Args:
    item_size : (integer) size of vector elements
    in_vlens : (vector of integers) number of elements in each input vector
    mapping : (vector of vectors of vectors of integers) how to map elements from input to output vectors"







%feature("docstring") gr_make_vector_map "Maps elements from a set of input vectors to a set of output vectors.

If in[i] is the input vector in the i'th stream then the output vector in the j'th stream is:

out[j][k] = in[mapping[j][k][0]][mapping[j][k][1]]

That is mapping is of the form (out_stream1_mapping, out_stream2_mapping, ...) and out_stream1_mapping is of the form (element1_mapping, element2_mapping, ...) and element1_mapping is of the form (in_stream, in_element).

Args:
    item_size : (integer) size of vector elements
    in_vlens : (vector of integers) number of elements in each input vector
    mapping : (vector of vectors of vectors of integers) how to map elements from input to output vectors"

%feature("docstring") gr_vector_to_stream "convert a stream of blocks of nitems_per_block items into a stream of items"





%feature("docstring") gr_make_vector_to_stream "convert a stream of blocks of nitems_per_block items into a stream of items"

%feature("docstring") gr_vector_to_streams "Convert 1 stream of vectors of length N to N streams of items."





%feature("docstring") gr_make_vector_to_streams "Convert 1 stream of vectors of length N to N streams of items."

















%feature("docstring") gr_prefix "return ./configure --prefix argument. Typically /usr/local"

%feature("docstring") gr_sysconfdir "return ./configure --sysconfdir argument. Typically $prefix/etc or /etc"

%feature("docstring") gr_prefsdir "return preferences file directory. Typically $sysconfdir/etc/conf.d"

%feature("docstring") gr_build_date "return date/time of build, as set when 'bootstrap' is run"

%feature("docstring") gr_version "return version string defined in configure.ac"











%feature("docstring") gr_feval_dd_example "trivial examples / test cases showing C++ calling Python code"

































%feature("docstring") gr_fast_atan2f "Fast arc tangent using table lookup and linear interpolation.

This function calculates the angle of the vector (x,y) based on a table lookup and linear interpolation. The table uses a 256 point table covering -45 to +45 degrees and uses symetry to determine the final angle value in the range of -180 to 180 degrees. Note that this function uses the small angle approximation for values close to zero. This routine calculates the arc tangent with an average error of +/- 0.045 degrees."





























%feature("docstring") gr_remez "Parks-McClellan FIR filter design.

Calculates the optimal (in the Chebyshev/minimax sense) FIR filter inpulse reponse given a set of band edges, the desired reponse on those bands, and the weight given to the error in those bands.


Frequency is in the range [0, 1], with 1 being the Nyquist frequency (Fs/2)"



%feature("docstring") gri_add_const_ss "Low-level, high-speed add_const_ss primitive.

copy src to dst adding konst"





%feature("docstring") gri_fft_malloc_complex "Helper function for allocating complex fft buffers."

%feature("docstring") gri_fft_malloc_float "Helper function for allocating float fft buffers."

%feature("docstring") gri_fft_free "Helper function for freeing fft buffers."

%feature("docstring") gri_float_to_char "convert array of floats to chars with rounding and saturation."

%feature("docstring") gri_float_to_int "convert array of floats to int with rounding and saturation."

%feature("docstring") gri_float_to_short "convert array of floats to shorts with rounding and saturation."

%feature("docstring") gri_float_to_uchar "convert array of floats to unsigned chars with rounding and saturation."































%feature("docstring") gr_cpm::phase_response "Return the taps for an interpolating FIR filter (gr_interp_fir_filter_fff).

These taps represent the phase response  for use in a CPM modulator, see also gr_cpmmod_bc.


Output: returns a vector of length  =  x . This can be used directly in an interpolating FIR filter such as gr_interp_fir_filter_fff with interpolation factor .

All phase responses are normalised s.t. ; this will cause a maximum phase change of  between two symbols, where  is the modulation index.

The following phase responses can be generated:


A short description of all these phase responses can be found in [1].

[1]: Anderson, Aulin and Sundberg; Digital Phase Modulation"

%feature("docstring") gr_feval "base class for evaluating a function: void -> void

This class is designed to be subclassed in Python or C++ and is callable from both places. It uses SWIG's \"director\" feature to implement the magic. It's slow. Don't use it in a performance critical path.

Override eval to define the behavior. Use calleval to invoke eval (this kludge is required to allow a python specific \"shim\" to be inserted."

%feature("docstring") gr_feval::eval "override this to define the function"







%feature("docstring") gr_feval_cc "base class for evaluating a function: complex -> complex

This class is designed to be subclassed in Python or C++ and is callable from both places. It uses SWIG's \"director\" feature to implement the magic. It's slow. Don't use it in a performance critical path.

Override eval to define the behavior. Use calleval to invoke eval (this kludge is required to allow a python specific \"shim\" to be inserted."

%feature("docstring") gr_feval_cc::eval "override this to define the function"







%feature("docstring") gr_feval_dd "base class for evaluating a function: double -> double

This class is designed to be subclassed in Python or C++ and is callable from both places. It uses SWIG's \"director\" feature to implement the magic. It's slow. Don't use it in a performance critical path.

Override eval to define the behavior. Use calleval to invoke eval (this kludge is required to allow a python specific \"shim\" to be inserted."

%feature("docstring") gr_feval_dd::eval "override this to define the function"







%feature("docstring") gr_feval_ll "base class for evaluating a function: long -> long

This class is designed to be subclassed in Python or C++ and is callable from both places. It uses SWIG's \"director\" feature to implement the magic. It's slow. Don't use it in a performance critical path.

Override eval to define the behavior. Use calleval to invoke eval (this kludge is required to allow a python specific \"shim\" to be inserted."

%feature("docstring") gr_feval_ll::eval "override this to define the function"







%feature("docstring") gr_firdes "Finite Impulse Response (FIR) filter design functions."

%feature("docstring") gr_firdes::low_pass "use \"window method\" to design a low-pass FIR filter

overall gain of filter (typically 1.0)  sampling freq (Hz)  center of transition band (Hz)  width of transition band (Hz). The normalized width of the transition band is what sets the number of taps required. Narrow --> more taps  What kind of window to use. Determines maximum attenuation and passband ripple.  parameter for Kaiser window"

%feature("docstring") gr_firdes::low_pass_2 "use \"window method\" to design a low-pass FIR filter

overall gain of filter (typically 1.0)  sampling freq (Hz)  center of transition band (Hz)  width of transition band (Hz).  required stopband attenuation The normalized width of the transition band and the required stop band attenuation is what sets the number of taps required. Narrow --> more taps More attenuatin --> more taps  What kind of window to use. Determines maximum attenuation and passband ripple.  parameter for Kaiser window"

%feature("docstring") gr_firdes::high_pass "use \"window method\" to design a high-pass FIR filter

overall gain of filter (typically 1.0)  sampling freq (Hz)  center of transition band (Hz)  width of transition band (Hz). The normalized width of the transition band is what sets the number of taps required. Narrow --> more taps  What kind of window to use. Determines maximum attenuation and passband ripple.  parameter for Kaiser window"

%feature("docstring") gr_firdes::high_pass_2 "use \"window method\" to design a high-pass FIR filter

overall gain of filter (typically 1.0)  sampling freq (Hz)  center of transition band (Hz)  width of transition band (Hz).  out of band attenuation The normalized width of the transition band and the required stop band attenuation is what sets the number of taps required. Narrow --> more taps More attenuation --> more taps  What kind of window to use. Determines maximum attenuation and passband ripple.  parameter for Kaiser window"

%feature("docstring") gr_firdes::band_pass "use \"window method\" to design a band-pass FIR filter

overall gain of filter (typically 1.0)  sampling freq (Hz)  center of transition band (Hz)  center of transition band (Hz)  width of transition band (Hz). The normalized width of the transition band is what sets the number of taps required. Narrow --> more taps  What kind of window to use. Determines maximum attenuation and passband ripple.  parameter for Kaiser window"

%feature("docstring") gr_firdes::band_pass_2 "use \"window method\" to design a band-pass FIR filter

overall gain of filter (typically 1.0)  sampling freq (Hz)  center of transition band (Hz)  center of transition band (Hz)  width of transition band (Hz).  out of band attenuation The normalized width of the transition band and the required stop band attenuation is what sets the number of taps required. Narrow --> more taps More attenuation --> more taps  What kind of window to use. Determines maximum attenuation and passband ripple.  parameter for Kaiser window"

%feature("docstring") gr_firdes::complex_band_pass "use \"window method\" to design a complex band-pass FIR filter

overall gain of filter (typically 1.0)  sampling freq (Hz)  center of transition band (Hz)  center of transition band (Hz)  width of transition band (Hz). The normalized width of the transition band is what sets the number of taps required. Narrow --> more taps  What kind of window to use. Determines maximum attenuation and passband ripple.  parameter for Kaiser window"

%feature("docstring") gr_firdes::complex_band_pass_2 "use \"window method\" to design a complex band-pass FIR filter

overall gain of filter (typically 1.0)  sampling freq (Hz)  center of transition band (Hz)  center of transition band (Hz)  width of transition band (Hz).  out of band attenuation The normalized width of the transition band and the required stop band attenuation is what sets the number of taps required. Narrow --> more taps More attenuation --> more taps  What kind of window to use. Determines maximum attenuation and passband ripple.  parameter for Kaiser window"

%feature("docstring") gr_firdes::band_reject "use \"window method\" to design a band-reject FIR filter

overall gain of filter (typically 1.0)  sampling freq (Hz)  center of transition band (Hz)  center of transition band (Hz)  width of transition band (Hz). The normalized width of the transition band is what sets the number of taps required. Narrow --> more taps  What kind of window to use. Determines maximum attenuation and passband ripple.  parameter for Kaiser window"

%feature("docstring") gr_firdes::band_reject_2 "use \"window method\" to design a band-reject FIR filter

overall gain of filter (typically 1.0)  sampling freq (Hz)  center of transition band (Hz)  center of transition band (Hz)  width of transition band (Hz).  out of band attenuation The normalized width of the transition band and the required stop band attenuation is what sets the number of taps required. Narrow --> more taps More attenuation --> more taps  What kind of window to use. Determines maximum attenuation and passband ripple.  parameter for Kaiser window"

%feature("docstring") gr_firdes::hilbert "design a Hilbert Transform Filter

Number of taps, must be odd  What kind of window to use  Only used for Kaiser"

%feature("docstring") gr_firdes::root_raised_cosine "design a Root Cosine FIR Filter (do we need a window?)

overall gain of filter (typically 1.0)  sampling freq (Hz)  rate: symbol rate, must be a factor of sample rate  excess bandwidth factor  number of taps"

%feature("docstring") gr_firdes::gaussian "design a Gaussian filter

overall gain of filter (typically 1.0)  per bit: symbol rate, must be a factor of sample rate  number of taps"















%feature("docstring") gr_fxpt "fixed point sine and cosine and friends.

fixed pt radians

--------- -------- -2**31 -pi 0 0 2**31-1 pi - epsilon"





%feature("docstring") gr_fxpt::sin "Given a fixed point angle x, return float sine (x)"





%feature("docstring") gr_fxpt_nco "Numerically Controlled Oscillator (NCO)"

























%feature("docstring") gr_fxpt_vco "Voltage Controlled Oscillator (VCO)"

















%feature("docstring") gr_nco "base class template for Numerically Controlled Oscillator (NCO)"

























%feature("docstring") gr_prefs "Base class for representing user preferences a la windows INI files.

The real implementation is in Python, and is accessable from C++ via the magic of SWIG directors."







%feature("docstring") gr_prefs::has_section "Does  exist?"

%feature("docstring") gr_prefs::has_option "Does  exist?"

%feature("docstring") gr_prefs::get_string "If option exists return associated value; else default_val."

%feature("docstring") gr_prefs::get_bool "If option exists and value can be converted to bool, return it; else default_val."

%feature("docstring") gr_prefs::get_long "If option exists and value can be converted to long, return it; else default_val."

%feature("docstring") gr_prefs::get_double "If option exists and value can be converted to double, return it; else default_val."

%feature("docstring") gr_random "pseudo random number generator"





%feature("docstring") gr_random::ran1 "uniform random deviate in the range [0.0, 1.0)"

%feature("docstring") gr_random::gasdev "normally distributed deviate with zero mean and variance 1"





















































%feature("docstring") gr_vco "base class template for Voltage Controlled Oscillator (VCO)"

















%feature("docstring") gri_agc2_cc "high performance Automatic Gain Control class

For Power the absolute value of the complex number is used."



























%feature("docstring") gri_agc2_ff "high performance Automatic Gain Control class with attack and decay rate

Power is approximated by absolute value"



























%feature("docstring") gri_agc_cc "high performance Automatic Gain Control class

For Power the absolute value of the complex number is used."























%feature("docstring") gri_agc_ff "high performance Automatic Gain Control class

Power is approximated by absolute value"





























%feature("docstring") gri_control_loop::update_gains "update the system gains from the loop bandwidth and damping factor

This function updates the system gains based on the loop bandwidth and damping factor of the system. These two factors can be set separately through their own set functions."

%feature("docstring") gri_control_loop::advance_loop "update the system gains from the loop bandwidth and damping factor

This function updates the system gains based on the loop bandwidth and damping factor of the system. These two factors can be set separately through their own set functions."

%feature("docstring") gri_control_loop::phase_wrap "Keep the phase between -2pi and 2pi.

This function keeps the phase between -2pi and 2pi. If the phase is greater than 2pi by d, it wraps around to be -2pi+d; similarly if it is less than -2pi by d, it wraps around to 2pi-d.

This function should be called after advance_loop to keep the phase in a good operating region. It is set as a separate method in case another way is desired as this is fairly heavy-handed."

%feature("docstring") gri_control_loop::frequency_limit "Keep the frequency between d_min_freq and d_max_freq.

This function keeps the frequency between d_min_freq and d_max_freq. If the frequency is greater than d_max_freq, it is set to d_max_freq. If the frequency is less than d_min_freq, it is set to d_min_freq.

This function should be called after advance_loop to keep the frequency in the specified region. It is set as a separate method in case another way is desired as this is fairly heavy-handed."

%feature("docstring") gri_control_loop::set_loop_bandwidth "Set the loop bandwidth.

Set the loop filter's bandwidth to . This should be between 2*pi/200 and 2*pi/100 (in rads/samp). It must also be a positive number.

When a new damping factor is set, the gains, alpha and beta, of the loop are recalculated by a call to update_gains()."

%feature("docstring") gri_control_loop::set_damping_factor "Set the loop damping factor.

Set the loop filter's damping factor to . The damping factor should be sqrt(2)/2.0 for critically damped systems. Set it to anything else only if you know what you are doing. It must be a number between 0 and 1.

When a new damping factor is set, the gains, alpha and beta, of the loop are recalculated by a call to update_gains()."

%feature("docstring") gri_control_loop::set_alpha "Set the loop gain alpha.

Set's the loop filter's alpha gain parameter.

This value should really only be set by adjusting the loop bandwidth and damping factor."

%feature("docstring") gri_control_loop::set_beta "Set the loop gain beta.

Set's the loop filter's beta gain parameter.

This value should really only be set by adjusting the loop bandwidth and damping factor."

%feature("docstring") gri_control_loop::set_frequency "Set the Costas loop's frequency.

Set's the Costas Loop's frequency. While this is normally updated by the inner loop of the algorithm, it could be useful to manually initialize, set, or reset this under certain circumstances."

%feature("docstring") gri_control_loop::set_phase "Set the Costas loop's phase.

Set's the Costas Loop's phase. While this is normally updated by the inner loop of the algorithm, it could be useful to manually initialize, set, or reset this under certain circumstances."

%feature("docstring") gri_control_loop::get_loop_bandwidth "Returns the loop bandwidth."

%feature("docstring") gri_control_loop::get_damping_factor "Returns the loop damping factor."

%feature("docstring") gri_control_loop::get_alpha "Returns the loop gain alpha."

%feature("docstring") gri_control_loop::get_beta "Returns the loop gain beta."

%feature("docstring") gri_control_loop::get_frequency "Get the Costas loop's frequency estimate."

%feature("docstring") gri_control_loop::get_phase "Get the Costas loop's phase estimate."

%feature("docstring") gri_fft_complex "FFT: complex in, complex out."













%feature("docstring") gri_fft_complex::set_nthreads "Set the number of threads to use for caclulation."

%feature("docstring") gri_fft_complex::nthreads "Get the number of threads being used by FFTW"

%feature("docstring") gri_fft_complex::execute "compute FFT. The input comes from inbuf, the output is placed in outbuf."

%feature("docstring") gri_fft_planner "Export reference to planner mutex for those apps that want to use FFTW w/o using the gri_fftw* classes."

%feature("docstring") gri_fft_planner::mutex "Return reference to planner mutex"

%feature("docstring") gri_fft_real_fwd "FFT: real in, complex out."













%feature("docstring") gri_fft_real_fwd::set_nthreads "Set the number of threads to use for caclulation."

%feature("docstring") gri_fft_real_fwd::nthreads "Get the number of threads being used by FFTW"

%feature("docstring") gri_fft_real_fwd::execute "compute FFT. The input comes from inbuf, the output is placed in outbuf."

%feature("docstring") gri_fft_real_rev "FFT: complex in, float out."













%feature("docstring") gri_fft_real_rev::set_nthreads "Set the number of threads to use for caclulation."

%feature("docstring") gri_fft_real_rev::nthreads "Get the number of threads being used by FFTW"

%feature("docstring") gri_fft_real_rev::execute "compute FFT. The input comes from inbuf, the output is placed in outbuf."

%feature("docstring") gri_glfsr "Galois Linear Feedback Shift Register using specified polynomial mask

Generates a maximal length pseudo-random sequence of length 2^degree-1."









%feature("docstring") gri_lfsr "Fibonacci Linear Feedback Shift Register using specified polynomial mask

Generates a maximal length pseudo-random sequence of length 2^degree-1.

Constructor: gri_lfsr(int mask, int seed, int reg_len);

mask - polynomial coefficients representing the locations of feedback taps from a shift register which are xor'ed together to form the new high order bit.

Some common masks might be: x^4 + x^3 + x^0 = 0x19 x^5 + x^3 + x^0 = 0x29 x^6 + x^5 + x^0 = 0x61

seed - the initialization vector placed into the register durring initialization. Low order bit corresponds to x^0 coefficient -- the first to be shifted as output.

reg_len - specifies the length of the feedback shift register to be used. Durring each iteration, the register is rightshifted one and the new bit is placed in bit reg_len. reg_len should generally be at least order(mask) + 1

see  for more explanation.

next_bit() - Standard LFSR operation

Perform one cycle of the LFSR. The output bit is taken from the shift register LSB. The shift register MSB is assigned from the modulo 2 sum of the masked shift register.

next_bit_scramble(unsigned char input) - Scramble an input stream

Perform one cycle of the LFSR. The output bit is taken from the shift register LSB. The shift register MSB is assigned from the modulo 2 sum of the masked shift register and the input LSB.

next_bit_descramble(unsigned char input) - Descramble an input stream

Perform one cycle of the LFSR. The output bit is taken from the modulo 2 sum of the masked shift register and the input LSB. The shift register MSB is assigned from the LSB of the input.

See  for operation of these last two functions (see multiplicative scrambler.)"











%feature("docstring") gri_lfsr::reset "Reset shift register to initial seed value"

%feature("docstring") gri_lfsr::pre_shift "Rotate the register through x number of bits where we are just throwing away the results to get queued up correctly"



%feature("docstring") gri_lfsr_15_1_0 "Linear Feedback Shift Register using primitive polynomial x^15 + x + 1

Generates a maximal length pseudo-random sequence of length 2^15 - 1 bits."









%feature("docstring") gri_lfsr_32k "generate pseudo-random sequence of length 32768 bits.

This is based on gri_lfsr_15_1_0 with an extra 0 added at the end of the sequence."











%feature("docstring") qa_general "collect all the tests for the gr directory"

%feature("docstring") qa_general::suite "return suite of tests for all of gr directory"





























































































































