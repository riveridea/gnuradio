
/*
 * This file was automatically generated using swig_doc.py.
 * 
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") atsc_bit_timing_loop "ATSC BitTimingLoop3

This class accepts a single real input and produces two outputs, the raw symbol (float) and the tag (atsc_syminfo)"





















%feature("docstring") atsc_make_bit_timing_loop "ATSC BitTimingLoop3

This class accepts a single real input and produces two outputs, the raw symbol (float) and the tag (atsc_syminfo)"

%feature("docstring") atsc_deinterleaver "Deinterleave RS encoded ATSC data ( atsc_mpeg_packet_rs_encoded --> atsc_mpeg_packet_rs_encoded)

input: atsc_mpeg_packet_rs_encoded; output: atsc_mpeg_packet_rs_encoded."







%feature("docstring") atsc_make_deinterleaver "Deinterleave RS encoded ATSC data ( atsc_mpeg_packet_rs_encoded --> atsc_mpeg_packet_rs_encoded)

input: atsc_mpeg_packet_rs_encoded; output: atsc_mpeg_packet_rs_encoded."

%feature("docstring") atsc_depad "depad mpeg ts packets from 256 byte atsc_mpeg_packet to 188 byte char

input: atsc_mpeg_packet; output: unsigned char"







%feature("docstring") atsc_make_depad "depad mpeg ts packets from 256 byte atsc_mpeg_packet to 188 byte char

input: atsc_mpeg_packet; output: unsigned char"

%feature("docstring") atsc_derandomizer "\"dewhiten\" incoming mpeg transport stream packets

input: atsc_mpeg_packet_no_sync; output: atsc_mpeg_packet;"







%feature("docstring") atsc_make_derandomizer "\"dewhiten\" incoming mpeg transport stream packets

input: atsc_mpeg_packet_no_sync; output: atsc_mpeg_packet;"

%feature("docstring") atsc_ds_to_softds "Debug glue routine (atsc_data_segment --> atsc_soft_data_segment)

input: atsc_data_segment; output: atsc_soft_data_segment."









%feature("docstring") atsc_make_ds_to_softds "Debug glue routine (atsc_data_segment --> atsc_soft_data_segment)

input: atsc_data_segment; output: atsc_soft_data_segment."

%feature("docstring") atsc_equalizer "ATSC equalizer (float,syminfo --> float,syminfo)

first inputs are data samples, second inputs are tags. first outputs are equalized data samples, second outputs are tags."











%feature("docstring") atsc_make_equalizer "ATSC equalizer (float,syminfo --> float,syminfo)

first inputs are data samples, second inputs are tags. first outputs are equalized data samples, second outputs are tags."

%feature("docstring") atsc_field_sync_demux "ATSC Field Sync Demux.

This class accepts 1 stream of floats (data), and 1 stream of tags (syminfo). * It outputs one stream of atsc_soft_data_segment packets"











%feature("docstring") atsc_make_field_sync_demux "ATSC Field Sync Demux.

This class accepts 1 stream of floats (data), and 1 stream of tags (syminfo). * It outputs one stream of atsc_soft_data_segment packets"

%feature("docstring") atsc_field_sync_mux "Insert ATSC Field Syncs as required (atsc_data_segment --> atsc_data_segment)

input: atsc_data_segment; output: atsc_data_segment."









%feature("docstring") atsc_make_field_sync_mux "Insert ATSC Field Syncs as required (atsc_data_segment --> atsc_data_segment)

input: atsc_data_segment; output: atsc_data_segment."

%feature("docstring") atsc_fpll "ATSC FPLL (2nd Version)

A/D --> GrFIRfilterFFF ----> GrAtscFPLL ---->

We use GrFIRfilterFFF to bandpass filter the signal of interest.

This class accepts a single real input and produces a single real output"









%feature("docstring") atsc_make_fpll "ATSC FPLL (2nd Version)

A/D --> GrFIRfilterFFF ----> GrAtscFPLL ---->

We use GrFIRfilterFFF to bandpass filter the signal of interest.

This class accepts a single real input and produces a single real output"

%feature("docstring") atsc_fs_checker "ATSC field sync checker (float,syminfo --> float,syminfo)

first output is delayed version of input. second output is set of tags, one-for-one with first output."









%feature("docstring") atsc_make_fs_checker "ATSC field sync checker (float,syminfo --> float,syminfo)

first output is delayed version of input. second output is set of tags, one-for-one with first output."

%feature("docstring") atsc_interleaver "Interleave RS encoded ATSC data ( atsc_mpeg_packet_rs_encoded --> atsc_mpeg_packet_rs_encoded)*

input: atsc_mpeg_packet_rs_encoded; output: atsc_mpeg_packet_rs_encoded."







%feature("docstring") atsc_make_interleaver "Interleave RS encoded ATSC data ( atsc_mpeg_packet_rs_encoded --> atsc_mpeg_packet_rs_encoded)*

input: atsc_mpeg_packet_rs_encoded; output: atsc_mpeg_packet_rs_encoded."

%feature("docstring") atsc_pad "pad mpeg ts packets from 188 byte char to to 256 byte atsc_mpeg_packet

input: unsigned char; output: atsc_mpeg_packet"









%feature("docstring") atsc_make_pad "pad mpeg ts packets from 188 byte char to to 256 byte atsc_mpeg_packet

input: unsigned char; output: atsc_mpeg_packet"

%feature("docstring") atsc_randomizer "\"Whiten\" incoming mpeg transport stream packets

input: atsc_mpeg_packet; output: atsc_mpeg_packet_no_sync"







%feature("docstring") atsc_make_randomizer "\"Whiten\" incoming mpeg transport stream packets

input: atsc_mpeg_packet; output: atsc_mpeg_packet_no_sync"

%feature("docstring") atsc_rs_decoder "Reed-Solomon decoder for ATSC

input: atsc_mpeg_packet_rs_encoded; output: atsc_mpeg_packet_no_sync."







%feature("docstring") atsc_make_rs_decoder "Reed-Solomon decoder for ATSC

input: atsc_mpeg_packet_rs_encoded; output: atsc_mpeg_packet_no_sync."

%feature("docstring") atsc_rs_encoder "Reed-Solomon encoder for ATSC

input: atsc_mpeg_packet_no_sync; output: atsc_mpeg_packet_rs_encoded."







%feature("docstring") atsc_make_rs_encoder "Reed-Solomon encoder for ATSC

input: atsc_mpeg_packet_no_sync; output: atsc_mpeg_packet_rs_encoded."

%feature("docstring") atsc_trellis_encoder "ATSC 12-way interleaved trellis encoder (atsc_mpeg_packet_rs_encoded --> atsc_data_segment)

input: atsc_mpeg_packet_rs_encoded; output: atsc_data_segment."







%feature("docstring") atsc_make_trellis_encoder "ATSC 12-way interleaved trellis encoder (atsc_mpeg_packet_rs_encoded --> atsc_data_segment)

input: atsc_mpeg_packet_rs_encoded; output: atsc_data_segment."

%feature("docstring") atsc_viterbi_decoder "ATSC 12-way interleaved viterbi decoder (atsc_soft_data_segment --> atsc_mpeg_packet_rs_encoded)

input: atsc_soft_data_segment; output: atsc_mpeg_packet_rs_encoded."







%feature("docstring") atsc_make_viterbi_decoder "ATSC 12-way interleaved viterbi decoder (atsc_soft_data_segment --> atsc_mpeg_packet_rs_encoded)

input: atsc_soft_data_segment; output: atsc_mpeg_packet_rs_encoded."







%feature("docstring") create_atsci_fs_checker "Factory that creates appropriate atsci_fs_checker"

%feature("docstring") create_atsci_fs_correlator "Factory that creates appropriate atsci_fs_correlator"



%feature("docstring") atsc_data_segment "contains 832 3 bit symbols. The low 3 bits in the byte hold the symbol."

































%feature("docstring") atsc_soft_data_segment "Contains 832 bipolar floating point symbols. Nominal values are +/- {1, 3, 5, 7}. This data type represents the input to the viterbi decoder."









%feature("docstring") atsci_basic_trellis_encoder "ATSC trellis encoder building block.

Note this is NOT the 12x interleaved interface.

This implements a single instance of the ATSC trellis encoder. This is a rate 2/3 encoder (really a constraint length 3, rate 1/2 encoder with the top bit passed through unencoded. This does not implement the \"precoding\" of the top bit, because the NTSC rejection filter is not supported."



%feature("docstring") atsci_basic_trellis_encoder::encode "Encode two bit INPUT into 3 bit return value. Domain is [0,3], Range is [0,7]. The mapping to bipolar levels is not done."

%feature("docstring") atsci_basic_trellis_encoder::reset "reset encoder state"

%feature("docstring") atsci_data_deinterleaver "atsc convolutional data deinterleaver"







%feature("docstring") atsci_data_interleaver "atsc convolutional data interleaver"





%feature("docstring") atsci_equalizer "abstract base class for ATSC equalizer"





%feature("docstring") atsci_equalizer::reset "reset state (e.g., on channel change)

Note, subclasses must invoke the superclass's method too!"

%feature("docstring") atsci_equalizer::filter "produce  of output from given inputs and tags

This is the main entry point. It examines the input_tags and local state and invokes the appropriate virtual function to handle each sub-segment of the input data.

 must have (nsamples + ntaps() - 1) valid entries. input_samples[0] .. input_samples[nsamples - 1 + ntaps() - 1] are referenced to compute the output values.

 must have nsamples valid entries. input_tags[0] .. input_tags[nsamples - 1] are referenced to compute the output values."

%feature("docstring") atsci_equalizer::ntaps "how much history the input data stream requires.

This must return a value >= 1. Think of this as the number of samples you need to look at to compute a single output sample."

%feature("docstring") atsci_equalizer::npretaps "how many taps are \"in the future\".

This allows us to handle what the ATSC folks call \"pre-ghosts\". What it really does is allow the caller to jack with the offset between the tags and the data so that everything magically works out.

npretaps () must return a value between 0 and ntaps() - 1.

If npretaps () returns 0, this means that the equalizer will only handle multipath \"in the past.\" I suspect that a good value would be something like 15% - 20% of ntaps ()."

%feature("docstring") atsci_equalizer::filter_normal "Input range is known NOT TO CONTAIN data segment syncs or field syncs. This should be the fast path. In the non decicion directed case, this just runs the input through the filter without adapting it.

 has (nsamples + ntaps() - 1) valid entries. input_samples[0] .. input_samples[nsamples - 1 + ntaps() - 1] may be referenced to compute the output values."

%feature("docstring") atsci_equalizer::filter_data_seg_sync "Input range is known to consist of only a data segment sync or a portion of a data segment sync.  will be in [1,4].  will be in [0,3].  is the offset of the input from the beginning of the data segment sync pattern.

 has (nsamples + ntaps() - 1) valid entries. input_samples[0] .. input_samples[nsamples - 1 + ntaps() - 1] may be referenced to compute the output values."

%feature("docstring") atsci_equalizer::filter_field_sync "Input range is known to consist of only a field sync segment or a portion of a field sync segment.  will be in [1,832].  will be in [0,831].  is the offset of the input from the beginning of the data segment sync pattern. We consider the 4 symbols of the immediately preceding data segment sync to be the first symbols of the field sync segment.  is in [0,1] and specifies which field (duh).

 has (nsamples + ntaps() - 1) valid entries. input_samples[0] .. input_samples[nsamples - 1 + ntaps() - 1] may be referenced to compute the output values."







%feature("docstring") atsci_equalizer_lms::reset "reset state (e.g., on channel change)

Note, subclasses must invoke the superclass's method too!"

%feature("docstring") atsci_equalizer_lms::ntaps "how much history the input data stream requires.

This must return a value >= 1. Think of this as the number of samples you need to look at to compute a single output sample."

%feature("docstring") atsci_equalizer_lms::npretaps "how many taps are \"in the future\".

This allows us to handle what the ATSC folks call \"pre-ghosts\". What it really does is allow the caller to jack with the offset between the tags and the data so that everything magically works out.

npretaps () must return a value between 0 and ntaps() - 1.

If npretaps () returns 0, this means that the equalizer will only handle multipath \"in the past.\" I suspect that a good value would be something like 15% - 20% of ntaps ()."

%feature("docstring") atsci_equalizer_lms::filter_normal "Input range is known NOT TO CONTAIN data segment syncs or field syncs. This should be the fast path. In the non decicion directed case, this just runs the input through the filter without adapting it.

 has (nsamples + ntaps() - 1) valid entries. input_samples[0] .. input_samples[nsamples - 1 + ntaps() - 1] may be referenced to compute the output values."

%feature("docstring") atsci_equalizer_lms::filter_data_seg_sync "Input range is known to consist of only a data segment sync or a portion of a data segment sync.  will be in [1,4].  will be in [0,3].  is the offset of the input from the beginning of the data segment sync pattern.

 has (nsamples + ntaps() - 1) valid entries. input_samples[0] .. input_samples[nsamples - 1 + ntaps() - 1] may be referenced to compute the output values."

%feature("docstring") atsci_equalizer_lms::filter_field_sync "Input range is known to consist of only a field sync segment or a portion of a field sync segment.  will be in [1,832].  will be in [0,831].  is the offset of the input from the beginning of the data segment sync pattern. We consider the 4 symbols of the immediately preceding data segment sync to be the first symbols of the field sync segment.  is in [0,1] and specifies which field (duh).

 has (nsamples + ntaps() - 1) valid entries. input_samples[0] .. input_samples[nsamples - 1 + ntaps() - 1] may be referenced to compute the output values."















%feature("docstring") atsci_equalizer_lms2::reset "reset state (e.g., on channel change)

Note, subclasses must invoke the superclass's method too!"

%feature("docstring") atsci_equalizer_lms2::ntaps "how much history the input data stream requires.

This must return a value >= 1. Think of this as the number of samples you need to look at to compute a single output sample."

%feature("docstring") atsci_equalizer_lms2::npretaps "how many taps are \"in the future\".

This allows us to handle what the ATSC folks call \"pre-ghosts\". What it really does is allow the caller to jack with the offset between the tags and the data so that everything magically works out.

npretaps () must return a value between 0 and ntaps() - 1.

If npretaps () returns 0, this means that the equalizer will only handle multipath \"in the past.\" I suspect that a good value would be something like 15% - 20% of ntaps ()."

%feature("docstring") atsci_equalizer_lms2::filter_normal "Input range is known NOT TO CONTAIN data segment syncs or field syncs. This should be the fast path. In the non decicion directed case, this just runs the input through the filter without adapting it.

 has (nsamples + ntaps() - 1) valid entries. input_samples[0] .. input_samples[nsamples - 1 + ntaps() - 1] may be referenced to compute the output values."

%feature("docstring") atsci_equalizer_lms2::filter_data_seg_sync "Input range is known to consist of only a data segment sync or a portion of a data segment sync.  will be in [1,4].  will be in [0,3].  is the offset of the input from the beginning of the data segment sync pattern.

 has (nsamples + ntaps() - 1) valid entries. input_samples[0] .. input_samples[nsamples - 1 + ntaps() - 1] may be referenced to compute the output values."

%feature("docstring") atsci_equalizer_lms2::filter_field_sync "Input range is known to consist of only a field sync segment or a portion of a field sync segment.  will be in [1,832].  will be in [0,831].  is the offset of the input from the beginning of the data segment sync pattern. We consider the 4 symbols of the immediately preceding data segment sync to be the first symbols of the field sync segment.  is in [0,1] and specifies which field (duh).

 has (nsamples + ntaps() - 1) valid entries. input_samples[0] .. input_samples[nsamples - 1 + ntaps() - 1] may be referenced to compute the output values."



















%feature("docstring") atsci_equalizer_nop::reset "reset state (e.g., on channel change)

Note, subclasses must invoke the superclass's method too!"

%feature("docstring") atsci_equalizer_nop::ntaps "how much history the input data stream requires.

This must return a value >= 1. Think of this as the number of samples you need to look at to compute a single output sample."

%feature("docstring") atsci_equalizer_nop::npretaps "how many taps are \"in the future\".

This allows us to handle what the ATSC folks call \"pre-ghosts\". What it really does is allow the caller to jack with the offset between the tags and the data so that everything magically works out.

npretaps () must return a value between 0 and ntaps() - 1.

If npretaps () returns 0, this means that the equalizer will only handle multipath \"in the past.\" I suspect that a good value would be something like 15% - 20% of ntaps ()."

%feature("docstring") atsci_equalizer_nop::filter_normal "Input range is known NOT TO CONTAIN data segment syncs or field syncs. This should be the fast path. In the non decicion directed case, this just runs the input through the filter without adapting it.

 has (nsamples + ntaps() - 1) valid entries. input_samples[0] .. input_samples[nsamples - 1 + ntaps() - 1] may be referenced to compute the output values."

%feature("docstring") atsci_equalizer_nop::filter_data_seg_sync "Input range is known to consist of only a data segment sync or a portion of a data segment sync.  will be in [1,4].  will be in [0,3].  is the offset of the input from the beginning of the data segment sync pattern.

 has (nsamples + ntaps() - 1) valid entries. input_samples[0] .. input_samples[nsamples - 1 + ntaps() - 1] may be referenced to compute the output values."

%feature("docstring") atsci_equalizer_nop::filter_field_sync "Input range is known to consist of only a field sync segment or a portion of a field sync segment.  will be in [1,832].  will be in [0,831].  is the offset of the input from the beginning of the data segment sync pattern. We consider the 4 symbols of the immediately preceding data segment sync to be the first symbols of the field sync segment.  is in [0,1] and specifies which field (duh).

 has (nsamples + ntaps() - 1) valid entries. input_samples[0] .. input_samples[nsamples - 1 + ntaps() - 1] may be referenced to compute the output values."





%feature("docstring") atsci_fake_single_viterbi "single channel viterbi decoder"



%feature("docstring") atsci_fake_single_viterbi::decode "ideally takes on the values +/- 1,3,5,7 return is decoded dibit in the range [0, 3]"



%feature("docstring") atsci_fake_single_viterbi::delay "internal delay of decoder"

%feature("docstring") atsci_fs_checker "abstract base class for ATSC field sync checker

Processes input samples one at a time looking for an occurence of either the field sync 1 or field sync 2 pattern.

Note that unlike atsci_fs_correlator, this class uses the symbol_num in input_tag to avoid having to test each symbol position.

For each sample processed, an output sample and an output tag are produced. The output samples are identical to the input samples but are delayed by a number of samples given by . The output tag associated with the the given output sample indicates whether this sample is the beginning of one of the field syncs or is an ordinary sample. The tags are defined in atsci_sync_tag.h.

For ease of use, the field sync patterns are defined to begin with the first symbol of the 4 symbol data segment sync pattern that immediately proceeds the actual PN 511 code. This makes it easier for downstream code to determine the location of data segment syncs merely by counting. They'll occur every 832 samples assuming everything is working."









%feature("docstring") atsci_fs_checker::delay "return delay in samples from input to output"

%feature("docstring") atsci_fs_checker_naive "Naive concrete implementation of field sync checker."















%feature("docstring") atsci_fs_checker_naive::delay "return delay in samples from input to output"

%feature("docstring") atsci_fs_correlator "abstract base class for ATSC field sync correlator

Processes input samples one at a time looking for an occurence of either the field sync 1 or field sync 2 pattern.

For each sample processed, an output sample and an output tag are produced. The output samples are identical to the input samples but are delayed by a number of samples given by . The output tag associated with the the given output sample indicates whether this sample is the beginning of one of the field syncs or is an ordinary sample. The tags are defined in atsci_sync_tag.h.

For ease of use, the field sync patterns are defined to begin with the first symbol of the 4 symbol data segment sync pattern that immediately proceeds the actual PN 511 code. This makes it easier for downstream code to determine the location of data segment syncs merely by counting. They'll occur every 832 samples assuming everything is working."









%feature("docstring") atsci_fs_correlator::delay "return delay in samples from input to output"

%feature("docstring") atsci_fs_correlator_naive "Naive concrete implementation of field sync correlator."















%feature("docstring") atsci_fs_correlator_naive::delay "return delay in samples from input to output"

%feature("docstring") atsci_interpolator "interpolator control for segment and symbol sync recovery"

%feature("docstring") atsci_interpolator::atsci_interpolator "must be >= 1.8"



%feature("docstring") atsci_interpolator::reset "call on channel change"

%feature("docstring") atsci_interpolator::update "produce next sample referenced to Tx clock

If there aren't enough input_samples left to produce an output, return false, else true."









%feature("docstring") atsci_randomizer "ATSC data \"whitener\".

The data randomizer described in ATSC standard A/53B. See figure D4 on page 54."



%feature("docstring") atsci_randomizer::reset "reset randomizer LFSR

must be called during the Data Segment Sync interval prior to the first data segment. I.e., the LFSR is reset prior to the first field of each VSB data frame."

%feature("docstring") atsci_randomizer::randomize "randomize (whiten) mpeg packet and remove leading MPEG-2 sync byte"

%feature("docstring") atsci_randomizer::derandomize "derandomize (de-whiten) mpeg packet and add leading MPEG-2 sync byte"









%feature("docstring") atsci_randomizer::output "return current output value"

%feature("docstring") atsci_randomizer::clk "clock LFSR; advance to next state."

%feature("docstring") atsci_randomizer::output_and_clk "return current output value and advance to next state"

%feature("docstring") atsci_reed_solomon "ATSC Reed-Solomon encoder / decoder.

The t=10 (207,187) code described in ATSC standard A/53B. See figure D5 on page 55."





%feature("docstring") atsci_reed_solomon::encode "Add RS error correction encoding."

%feature("docstring") atsci_reed_solomon::decode "Decode RS encoded packet."

%feature("docstring") atsci_single_viterbi "single channel viterbi decoder"



%feature("docstring") atsci_single_viterbi::decode "ideally takes on the values +/- 1,3,5,7 return is decoded dibit in the range [0, 3]"



%feature("docstring") atsci_single_viterbi::delay "internal delay of decoder"

%feature("docstring") atsci_slicer_agc "Automatic Gain Control class for atsc slicer.

Given perfect data, output values will be +/- {7, 5, 3, 1}"







%feature("docstring") atsci_sliding_correlator "look for the PN 511 field sync pattern"





%feature("docstring") atsci_sliding_correlator::input_bit "input hard decision bit, return correlation (0,511)"

%feature("docstring") atsci_sliding_correlator::input_int "input sample, return correlation (0,511)"

%feature("docstring") atsci_sliding_correlator::input_float "input sample, return correlation (0,511)"



%feature("docstring") atsci_sssr "ATSC Segment and Symbol Sync Recovery.

This class implements data segment sync tracking and symbol timing using the method described in \"ATSC/VSB Tutorial - Receiver Technology\" by Wayne E. Bretl of Zenith, pgs 41-45."









%feature("docstring") atsci_sssr::reset "call on channel change"

%feature("docstring") atsci_sssr::update "process a single sample at the ATSC symbol rate (~10.76 MSPS)

This block computes an indication of our timing error and keeps track of where the segment sync's occur.  is returned to indicate how the interpolator timing needs to be adjusted to track the transmitter's symbol timing. If  is true, then  is the index of this sample in the current segment. The symbols are numbered from 0 to 831, where symbols 0, 1, 2 and 3 correspond to the data segment sync pattern, nominally +5, -5, -5, +5."

%feature("docstring") atsci_trellis_encoder "fancy, schmancy 12-way interleaved trellis encoder for ATSC"





%feature("docstring") atsci_trellis_encoder::reset "reset all encoder states"

%feature("docstring") atsci_trellis_encoder::encode "Take 12 RS encoded, convolutionally interleaved segments and produce 12 trellis coded data segments. We work in groups of 12 because that's the smallest number of segments that composes a single full cycle of the encoder mux."



%feature("docstring") atsci_viterbi_decoder "fancy, schmancy 12-way interleaved viterbi decoder for ATSC"





%feature("docstring") atsci_viterbi_decoder::reset "reset all decoder states"

%feature("docstring") atsci_viterbi_decoder::decode "Take 12 data segments of soft decisions (floats) and produce 12 RS encoded data segments. We work in groups of 12 because that's the smallest number of segments that composes a single full cycle of the decoder mux."



%feature("docstring") convolutional_interleaver "template class for generic convolutional interleaver"





%feature("docstring") convolutional_interleaver::reset "reset interleaver (flushes contents and resets commutator)"

%feature("docstring") convolutional_interleaver::sync "sync interleaver (resets commutator, but doesn't flush fifos)"

%feature("docstring") convolutional_interleaver::end_to_end_delay "return end to end delay in symbols (delay through concatenated interleaver / deinterleaver)"

%feature("docstring") convolutional_interleaver::transform "transform a single symbol"

%feature("docstring") sssr::digital_correlator "digital correlator for 1001 and 0110 patterns"



%feature("docstring") sssr::digital_correlator::reset "called on channel change"

%feature("docstring") sssr::digital_correlator::update "clock bit in and return true if we've seen 1001"

%feature("docstring") GrAtscBitTimingLoop "ATSC BitTimingLoop.

This class accepts a single real input and produces a single real output"























%feature("docstring") GrAtscBitTimingLoop2 "ATSC BitTimingLoop.

This class accepts a single real input and produces a single real output"

















%feature("docstring") GrAtscBitTimingLoop3 "ATSC BitTimingLoop3.

This class accepts a single real input and produces two outputs, the raw symbol (float) and the tag (atsc_syminfo)"



































%feature("docstring") GrAtscDataSegToSoftDataSeg "Debug glue routine (atsc_data_segment --> atsc_soft_data_segment)"









%feature("docstring") GrAtscDeinterleaver "Deinterleave RS encoded ATSC data ( atsc_mpeg_packet_rs_encoded --> atsc_mpeg_packet_rs_encoded)"









%feature("docstring") GrAtscDerandomizer "Derandomize ATSC data (atsc_mpeg_packet_no_sync --> atsc_mpeg_packet)"









%feature("docstring") GrAtscEqualizer "ATSC equalizer (float,syminfo --> float,syminfo)

first inputs are data samples, second inputs are tags. first outputs are equalized data samples, second outputs are tags.

tag values are defined in atsci_syminfo.h"











%feature("docstring") GrAtscFieldSyncChecker "ATSC field sync checker (float,syminfo --> float,syminfo)

first output is delayed version of input. second output is set of tags, one-for-one with first output."









%feature("docstring") GrAtscFieldSyncCorrelator "ATSC field sync correlator (float --> float,float)

first output is delayed version of input. second output is set of tags, one-for-one with first output.

tag values are defined in atsci_sync_tag.h"









%feature("docstring") GrAtscFieldSyncDemux "ATSC Field Sync Demux.

This class accepts 1 stream of floats (data), and 1 stream of tags (syminfo). It outputs one stream of atsc_soft_data_segment packets"











%feature("docstring") GrAtscFieldSyncMux "Insert ATSC Field Syncs as required (atsc_data_segment --> atsc_data_segment)"













%feature("docstring") GrAtscFPLL "ATSC FPLL (2nd Version)

Used as follows: float float A/D --> GrFIRfilterFFF ----> GrAtscFPLL ---->

We use GrFIRfilterFFF to bandpass filter the signal of interest.

This class accepts a single real input and produces a single real output"















%feature("docstring") GrAtscInterleaver "Interleave RS encoded ATSC data ( atsc_mpeg_packet_rs_encoded --> atsc_mpeg_packet_rs_encoded)"









%feature("docstring") GrAtscRandomizer "Randomize ATSC data (atsc_mpeg_packet --> atsc_mpeg_packet_no_sync)"









%feature("docstring") GrAtscRSDecoder "Pass ATSC data Reed-Solomon decoder( atsc_mpeg_packet_rs_encoded --> atsc_mpeg_rs_no_sync)"









%feature("docstring") GrAtscRSEncoder "Encode using Reed Solomon ATSC data (atsc_mpeg_packet_no_sync --> atsc_mpeg_packet_rs_encoded)"









%feature("docstring") GrAtscSegSymSync "ATSC SegSymSync.

Abstract class that establishes symbol timing and synchronizes with data segment boundaries.

Takes a single stream of floats as the input and produces two streams as output. The first stream is the data samples and is of type float. The second stream is the tags, and is of type syminfo.

The current GNU Radio interface doesn't currently support different types on the input ports (or output ports for that matter), but since they are the same size, it works."





%feature("docstring") GrAtscSegSymSync::reset "reset bit timing loop on channel change"

%feature("docstring") GrAtscSegSymSync::create "create an instance of GrAtscSegSymSync"

%feature("docstring") GrAtscSegSymSyncImpl "concrete implementation of GrAtscSegSymSync

This class implements data segment sync tracking and symbol timing using a variation of the method described in \"ATSC/VSB Tutorial - Receiver Technology\" by Wayne E. Bretl of Zenith, pgs 41-45."













%feature("docstring") GrAtscSegSymSyncImpl::reset "reset bit timing loop on channel change"

%feature("docstring") GrAtscSymbolMapper "take atsc_data_segments and map them to symbols.

Input is a stream of atsc_data_segments. Output is a stream of symbols at 1x the symbol rate

This module performs the signal mapping & pilot addition."









%feature("docstring") GrAtscTrellisEncoder "ATSC 12-way interleaved trellis encoder (atsc_mpeg_packet_rs_encoded --> atsc_data_segment)"









%feature("docstring") GrAtscViterbiDecoder "ATSC 12-way interleaved viterbi decoder (atsc_soft_data_segment --> atsc_mpeg_packet_rs_encoded)"









%feature("docstring") interleaver_fifo "template class for interleaver fifo"





%feature("docstring") interleaver_fifo::reset "reset interleaver (flushes contents and resets commutator)"

%feature("docstring") interleaver_fifo::stuff "stuff a symbol into the fifo and return the oldest"

%feature("docstring") plinfo "pipeline info that flows with data

Not all modules need all the info"



































%feature("docstring") plinfo::delay "Set  such that it reflects a  pipeline delay from ."

%feature("docstring") plinfo::sanity_check "confirm that  is plausible"

%feature("docstring") qa_atsc "collect all the tests for the dtv directory"

%feature("docstring") qa_atsc::suite "return suite of tests for all of dtv directory"

























































































































































































































%feature("docstring") sssr::quad_filter "quad filter (used to compute timing error)"



%feature("docstring") sssr::quad_filter::reset "called on channel change"



%feature("docstring") sssr::seg_sync_integrator "segment sync integrator"



%feature("docstring") sssr::seg_sync_integrator::reset "called on channel change"

%feature("docstring") sssr::seg_sync_integrator::update "update current tap with weight and return integrated correlation value"

%feature("docstring") sssr::seg_sync_integrator::find_max "return index of maximum correlation value"







