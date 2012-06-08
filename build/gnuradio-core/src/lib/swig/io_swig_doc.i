
/*
 * This file was automatically generated using swig_doc.py.
 * 
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr_file_descriptor_sink "Write stream to file descriptor."







%feature("docstring") gr_make_file_descriptor_sink "Write stream to file descriptor."

%feature("docstring") gr_file_descriptor_source "Read stream from file descriptor."













%feature("docstring") gr_make_file_descriptor_source "Read stream from file descriptor."

%feature("docstring") gr_file_sink "Write stream to file."







%feature("docstring") gr_make_file_sink "Write stream to file."

%feature("docstring") gr_file_source "Read stream from file."







%feature("docstring") gr_file_source::seek "seek file to  relative to"

%feature("docstring") gr_make_file_source "Read stream from file."

%feature("docstring") gr_histo_sink_f "Histogram module."



















%feature("docstring") gr_make_histo_sink_f "Histogram module."

%feature("docstring") gr_message_sink "Gather received items into messages and insert into msgq."







%feature("docstring") gr_make_message_sink "Gather received items into messages and insert into msgq."

%feature("docstring") gr_message_source "Turn received messages into a stream."









%feature("docstring") gr_make_message_source "Turn received messages into a stream."

%feature("docstring") gr_oscope_sink_f "Building block for python oscilloscope module.

Accepts multiple float streams."









%feature("docstring") gr_make_oscope_sink_f "Building block for python oscilloscope module.

Accepts multiple float streams."

%feature("docstring") gr_tagged_file_sink "Write stream to file descriptor."







%feature("docstring") gr_make_tagged_file_sink "Write stream to file descriptor."

%feature("docstring") gr_udp_sink "Write stream to an UDP socket.

Args:
    itemsize : The size (in bytes) of the item datatype
    host : The name or IP address of the receiving host; use NULL or None for no connection
    port : Destination port to connect to on receiving host
    payload_size : UDP payload size by default set to 1472 = (1500 MTU - (8 byte UDP header) - (20 byte IP header))
    eof : Send zero-length packet on disconnect"

%feature("docstring") gr_udp_sink::gr_udp_sink "UDP Sink Constructor."



%feature("docstring") gr_udp_sink::payload_size "return the PAYLOAD_SIZE of the socket"

%feature("docstring") gr_udp_sink::connect "Change the connection to a new destination.

Calls disconnect() to terminate any current connection first."

%feature("docstring") gr_udp_sink::disconnect "Send zero-length packet (if eof is requested) then stop sending.

Zero-byte packets can be interpreted as EOF by gr_udp_source. Note that disconnect occurs automatically when the sink is destroyed, but not when its top_block stops."



%feature("docstring") gr_make_udp_sink "Write stream to an UDP socket.

Args:
    itemsize : The size (in bytes) of the item datatype
    host : The name or IP address of the receiving host; use NULL or None for no connection
    port : Destination port to connect to on receiving host
    payload_size : UDP payload size by default set to 1472 = (1500 MTU - (8 byte UDP header) - (20 byte IP header))
    eof : Send zero-length packet on disconnect"

%feature("docstring") gr_udp_source "Read stream from an UDP socket.

Args:
    itemsize : The size (in bytes) of the item datatype
    host : The name or IP address of the receiving host; can be NULL, None, or \"0.0.0.0\" to allow reading from any interface on the host
    port : The port number on which to receive data; use 0 to have the system assign an unused port number
    payload_size : UDP payload size by default set to 1472 = (1500 MTU - (8 byte UDP header) - (20 byte IP header))
    eof : Interpret zero-length packet as EOF (default: true)
    wait : Wait for data if not immediately available (default: true)"

%feature("docstring") gr_udp_source::gr_udp_source "UDP Source Constructor."



%feature("docstring") gr_udp_source::payload_size "return the PAYLOAD_SIZE of the socket"

%feature("docstring") gr_udp_source::get_port "return the port number of the socket"



%feature("docstring") gr_make_udp_source "Read stream from an UDP socket.

Args:
    itemsize : The size (in bytes) of the item datatype
    host : The name or IP address of the receiving host; can be NULL, None, or \"0.0.0.0\" to allow reading from any interface on the host
    port : The port number on which to receive data; use 0 to have the system assign an unused port number
    payload_size : UDP payload size by default set to 1472 = (1500 MTU - (8 byte UDP header) - (20 byte IP header))
    eof : Interpret zero-length packet as EOF (default: true)
    wait : Wait for data if not immediately available (default: true)"

%feature("docstring") gr_wavfile_sink "Write stream to a Microsoft PCM (.wav) file.

Values must be floats within [-1;1]. Check gr_make_wavfile_sink() for extra info."



%feature("docstring") gr_wavfile_sink::convert_to_short "Convert a sample value within [-1;+1] to a corresponding short integer value."

%feature("docstring") gr_wavfile_sink::do_update "If any file changes have occurred, update now. This is called internally by work() and thus doesn't usually need to be called by hand."

%feature("docstring") gr_wavfile_sink::close_wav "Writes information to the WAV header which is not available a-priori (chunk size etc.) and closes the file. Not thread-safe and assumes d_fp is a valid file pointer, should thus only be called by other methods."



%feature("docstring") gr_wavfile_sink::open "Opens a new file and writes a WAV header. Thread-safe."

%feature("docstring") gr_wavfile_sink::close "Closes the currently active file and completes the WAV header. Thread-safe."

%feature("docstring") gr_wavfile_sink::set_sample_rate "Set the sample rate. This will not affect the WAV file currently opened. Any following open() calls will use this new sample rate."

%feature("docstring") gr_wavfile_sink::set_bits_per_sample "Set bits per sample. This will not affect the WAV file currently opened (see set_sample_rate()). If the value is neither 8 nor 16, the call is ignored and the current value is kept."



%feature("docstring") gr_make_wavfile_sink "Write stream to a Microsoft PCM (.wav) file.

Values must be floats within [-1;1]. Check gr_make_wavfile_sink() for extra info."

%feature("docstring") gr_wavfile_source "Read stream from a Microsoft PCM (.wav) file, output floats.

Unless otherwise called, values are within [-1;1]. Check gr_make_wavfile_source() for extra info."



%feature("docstring") gr_wavfile_source::convert_to_float "Convert an integer sample value to a float value within [-1;1]."





%feature("docstring") gr_wavfile_source::sample_rate "Read the sample rate as specified in the wav file header."

%feature("docstring") gr_wavfile_source::bits_per_sample "Return the number of bits per sample as specified in the wav file header. Only 8 or 16 bit are supported here."

%feature("docstring") gr_wavfile_source::channels "Return the number of channels in the wav file as specified in the wav file header. This is also the max number of outputs you can have."

%feature("docstring") gr_make_wavfile_source "Read stream from a Microsoft PCM (.wav) file, output floats.

Unless otherwise called, values are within [-1;1]. Check gr_make_wavfile_source() for extra info."

%feature("docstring") gri_wavheader_parse "Read signal information from a given WAV file.

File pointer to an opened, empty file.  Stores the sample rate [S/s]  Number of channels  Bytes per sample, can either be 1 or 2 (corresponding to 8 or 16 bit samples, respectively)  Number of the first byte containing a sample. Use this with fseek() to jump from the end of the file to the first sample when in repeat mode.  Number of samples per channel  The normalization factor with which you need to divide the integer values of the samples to get them within [-1;1]  The value by which the sample values need to be shifted after normalization (reason being, 8-bit WAV files store samples as unsigned char and 16-bit as signed short int)"

%feature("docstring") gri_wav_read_sample "Read one sample from an open WAV file at the current position.

Takes care of endianness."

%feature("docstring") gri_wavheader_write "Write a valid RIFF file header.

Note: Some header values are kept blank because they're usually not known a-priori (file and chunk lengths). Use gri_wavheader_complete() to fill these in."

%feature("docstring") gri_wav_write_sample "Write one sample to an open WAV file at the current position.

Takes care of endianness."

%feature("docstring") gri_wavheader_complete "Complete a WAV header.

Note: The stream position is changed during this function. If anything needs to be written to the WAV file after calling this function (which shouldn't happen), you need to fseek() to the end of the file (or whereever).

 File pointer to an open WAV file with a blank header  Length of all samples written to the file in bytes."





%feature("docstring") make_ppio "Factory method.

Split out from class to make life easier for SWIG"



%feature("docstring") gr_file_sink_base "Common base class for file sinks."





%feature("docstring") gr_file_sink_base::open "Open filename and begin output to it."

%feature("docstring") gr_file_sink_base::close "Close current output file.

Closes current output file and ignores any output until open is called to connect to another file."

%feature("docstring") gr_file_sink_base::do_update "if we've had an update, do it now."

%feature("docstring") gr_file_sink_base::set_unbuffered "turn on unbuffered writes for slower outputs"

%feature("docstring") gr_oscope_guts "guts of oscilloscope trigger and buffer module

This module processes sets of samples provided the  method. When appropriate given the updateRate, sampleRate and trigger conditions, process_sample will periodically write output records of captured data to output_fd. For each trigger event, nchannels records will be written. Each record consists of get_samples_per_output_record binary floats. The trigger instant occurs at the 1/2 way point in the buffer. Thus, output records consist of 50% pre-trigger data and 50% post-trigger data."





















%feature("docstring") gr_oscope_guts::process_sample "points to nchannels float values. These are the values for each channel at this sample time."





































%feature("docstring") gr_oscope_sink_x "Abstract class for python oscilloscope module.

Don't instantiate this. Use gr_oscope_sink_f or gr_oscope_sink_c instead."









































%feature("docstring") i2c "abstract class for controlling i2c bus"









%feature("docstring") i2c_bbio "abstract class that implements bit banging i/o for i2c bus."















%feature("docstring") i2c_bbio_pp "concrete class that bit bangs eval board i2c bus using parallel port

This class talks to the i2c bus on the microtune eval board using the parallel port. This works for both the 4937 and 4702 boards."













%feature("docstring") i2c_bitbang "class for controlling i2c bus"























%feature("docstring") microtune_4702 "class for controlling microtune 4702 tuner module"





%feature("docstring") microtune_4702::set_RF_freq "select RF frequency to be tuned to output frequency.  is the requested frequency in Hz,  is set to the actual frequency tuned. It takes about 100 ms for the PLL to settle."





%feature("docstring") microtune_4702_eval_board "control microtune 4702 eval board"





%feature("docstring") microtune_4702_eval_board::set_AGC "set RF and IF AGC levels together (scale [0, 1000])

This provides a simple linear interface for adjusting both the RF and IF gain in consort. This is the easy to use interface. 0 corresponds to minimum gain. 1000 corresponds to maximum gain."

%feature("docstring") microtune_4937 "class for controlling microtune 4937 tuner module"





%feature("docstring") microtune_4937::set_RF_freq "select RF frequency to be tuned to output frequency.  is the requested frequency in Hz,  is set to the actual frequency tuned. It takes about 100 ms for the PLL to settle."





%feature("docstring") microtune_4937_eval_board "control microtune 4937 eval board"





%feature("docstring") microtune_4937_eval_board::set_AGC "set RF and IF AGC levels together (scale [0, 1000])

This provides a simple linear interface for adjusting both the RF and IF gain in consort. This is the easy to use interface. 0 corresponds to minimum gain. 1000 corresponds to maximum gain."

%feature("docstring") microtune_xxxx "abstract class for controlling microtune {4937,4702} tuner modules"





%feature("docstring") microtune_xxxx::set_RF_freq "select RF frequency to be tuned to output frequency.  is the requested frequency in Hz,  is set to the actual frequency tuned. It takes about 100 ms for the PLL to settle."





%feature("docstring") microtune_xxxx_eval_board "abstract class for controlling microtune xxxx eval board"





%feature("docstring") microtune_xxxx_eval_board::board_present_p "is the eval board present?"

%feature("docstring") microtune_xxxx_eval_board::set_RF_AGC_voltage "set RF and IF AGC control voltages ([0, 5] volts)"



%feature("docstring") microtune_xxxx_eval_board::set_AGC "set RF and IF AGC levels together (scale [0, 1000])

This provides a simple linear interface for adjusting both the RF and IF gain in consort. This is the easy to use interface. 0 corresponds to minimum gain. 1000 corresponds to maximum gain."

%feature("docstring") microtune_xxxx_eval_board::set_RF_freq "select RF frequency to be tuned to output frequency.  is the requested frequency in Hz,  is set to the actual frequency tuned. It takes about 100 ms for the PLL to settle."









%feature("docstring") ppio "abstract class that provides low level access to parallel port bits"



















%feature("docstring") ppio_ppdev "access to parallel port bits using the linux ppdev interface"



















%feature("docstring") sdr_1000_base "Very low level interface to SDR 1000 xcvr hardware."







