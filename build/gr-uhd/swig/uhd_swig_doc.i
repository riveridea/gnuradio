
/*
 * This file was automatically generated using swig_doc.py.
 * 
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") uhd_amsg_source "Make a new USRP asynchronous message-based source block."

%feature("docstring") uhd_amsg_source::msg_to_async_metadata_t "Convert a raw asynchronous message to an asynchronous metatdata object."

%feature("docstring") uhd_make_amsg_source "Make a new USRP asynchronous message-based source block."

%feature("docstring") uhd_usrp_sink "Make a new USRP sink block.

The USRP sink block reads a stream and transmits the samples. The sink block also provides API calls for transmitter settings.

TX Stream tagging:

The following tag keys will be consumed by the work function:


The sob and eob (start and end of burst) tag values are pmt booleans. When present, burst tags should be set to true (pmt::PMT_T).

The timstamp tag value is a pmt tuple of the following: (uint64 seconds, and double fractional seconds).

See the UHD manual for more detailed documentation:"

%feature("docstring") uhd_usrp_sink::set_start_time "Set the start time for outgoing samples. To control when samples are transmitted, set this value before starting the flow graph. The value is cleared after each run. When not specified, the start time will be:"

%feature("docstring") uhd_usrp_sink::get_usrp_info "Returns identifying information about this USRP's configuration. Returns motherboard ID, name, and serial. Returns daughterboard TX ID, subdev name and spec, serial, and antenna."

%feature("docstring") uhd_usrp_sink::set_subdev_spec "Set the frontend specification."

%feature("docstring") uhd_usrp_sink::get_subdev_spec "Get the TX frontend specification."

%feature("docstring") uhd_usrp_sink::set_samp_rate "Set the sample rate for the usrp device."

%feature("docstring") uhd_usrp_sink::get_samp_rate "Get the sample rate for the usrp device. This is the actual sample rate and may differ from the rate set."

%feature("docstring") uhd_usrp_sink::get_samp_rates "Get the possible sample rates for the usrp device."

%feature("docstring") uhd_usrp_sink::set_center_freq "Tune the usrp device to the desired center frequency."

%feature("docstring") uhd_usrp_sink::get_center_freq "Get the center frequency."

%feature("docstring") uhd_usrp_sink::get_freq_range "Get the tunable frequency range."

%feature("docstring") uhd_usrp_sink::set_gain "Set the gain for the dboard."

%feature("docstring") uhd_usrp_sink::get_gain "Get the actual dboard gain setting."

%feature("docstring") uhd_usrp_sink::get_gain_names "Get the actual dboard gain setting of named stage."

%feature("docstring") uhd_usrp_sink::get_gain_range "Get the settable gain range."

%feature("docstring") uhd_usrp_sink::set_antenna "Set the antenna to use."

%feature("docstring") uhd_usrp_sink::get_antenna "Get the antenna in use."

%feature("docstring") uhd_usrp_sink::get_antennas "Get a list of possible antennas."

%feature("docstring") uhd_usrp_sink::set_bandwidth "Set the bandpass filter on the RF frontend."

%feature("docstring") uhd_usrp_sink::set_dc_offset "Set a constant DC offset value. The value is complex to control both I and Q."

%feature("docstring") uhd_usrp_sink::set_iq_balance "Set the RX frontend IQ imbalance correction. Use this to adjust the magnitude and phase of I and Q."

%feature("docstring") uhd_usrp_sink::get_sensor "Get an RF frontend sensor value."

%feature("docstring") uhd_usrp_sink::get_sensor_names "Get a list of possible RF frontend sensor names."

%feature("docstring") uhd_usrp_sink::get_dboard_sensor "DEPRECATED use get_sensor."

%feature("docstring") uhd_usrp_sink::get_dboard_sensor_names "DEPRECATED use get_sensor_names."

%feature("docstring") uhd_usrp_sink::get_mboard_sensor "Get a motherboard sensor value."

%feature("docstring") uhd_usrp_sink::get_mboard_sensor_names "Get a list of possible motherboard sensor names."

%feature("docstring") uhd_usrp_sink::set_clock_config "Set the clock configuration. DEPRECATED for set_time/clock_source."

%feature("docstring") uhd_usrp_sink::set_time_source "Set the time source for the usrp device. This sets the method of time synchronization, typically a pulse per second or an encoded time. Typical options for source: external, MIMO."

%feature("docstring") uhd_usrp_sink::get_time_source "Get the currently set time source."

%feature("docstring") uhd_usrp_sink::get_time_sources "Get a list of possible time sources."

%feature("docstring") uhd_usrp_sink::set_clock_source "Set the clock source for the usrp device. This sets the source for a 10 Mhz reference clock. Typical options for source: internal, external, MIMO."

%feature("docstring") uhd_usrp_sink::get_clock_source "Get the currently set clock source."

%feature("docstring") uhd_usrp_sink::get_clock_sources "Get a list of possible clock sources."

%feature("docstring") uhd_usrp_sink::get_clock_rate "Get the master clock rate."

%feature("docstring") uhd_usrp_sink::set_clock_rate "Set the master clock rate."

%feature("docstring") uhd_usrp_sink::get_time_now "Get the current time registers."

%feature("docstring") uhd_usrp_sink::get_time_last_pps "Get the time when the last pps pulse occured."

%feature("docstring") uhd_usrp_sink::set_time_now "Sets the time registers immediately."

%feature("docstring") uhd_usrp_sink::set_time_next_pps "Set the time registers at the next pps."

%feature("docstring") uhd_usrp_sink::set_time_unknown_pps "Sync the time registers with an unknown pps edge."

%feature("docstring") uhd_usrp_sink::set_command_time "Set the time at which the control commands will take effect.

A timed command will back-pressure all subsequent timed commands, assuming that the subsequent commands occur within the time-window. If the time spec is late, the command will be activated upon arrival."

%feature("docstring") uhd_usrp_sink::clear_command_time "Clear the command time so future commands are sent ASAP."

%feature("docstring") uhd_usrp_sink::get_dboard_iface "Get access to the underlying uhd dboard iface object."

%feature("docstring") uhd_usrp_sink::get_device "Get access to the underlying uhd device object."

%feature("docstring") uhd_usrp_sink::set_user_register "Perform write on the user configuration register bus. These only exist if the user has implemented custom setting registers in the device FPGA."

%feature("docstring") uhd_make_usrp_sink "Make a new USRP sink block.

The USRP sink block reads a stream and transmits the samples. The sink block also provides API calls for transmitter settings.

TX Stream tagging:

The following tag keys will be consumed by the work function:


The sob and eob (start and end of burst) tag values are pmt booleans. When present, burst tags should be set to true (pmt::PMT_T).

The timstamp tag value is a pmt tuple of the following: (uint64 seconds, and double fractional seconds).

See the UHD manual for more detailed documentation:"

%feature("docstring") uhd_usrp_source "Make a new USRP source block.

The USRP source block receives samples and writes to a stream. The source block also provides API calls for receiver settings.

RX Stream tagging:

The following tag keys will be produced by the work function:


The timstamp tag value is a pmt tuple of the following: (uint64 seconds, and double fractional seconds). A timestamp tag is produced at start() and after overflows.

See the UHD manual for more detailed documentation:"

%feature("docstring") uhd_usrp_source::set_start_time "Set the start time for incoming samples. To control when samples are received, set this value before starting the flow graph. The value is cleared after each run. When not specified, the start time will be:"

%feature("docstring") uhd_usrp_source::get_usrp_info "Returns identifying information about this USRP's configuration. Returns motherboard ID, name, and serial. Returns daughterboard RX ID, subdev name and spec, serial, and antenna."

%feature("docstring") uhd_usrp_source::set_subdev_spec "Set the frontend specification."

%feature("docstring") uhd_usrp_source::get_subdev_spec "Get the RX frontend specification."

%feature("docstring") uhd_usrp_source::set_samp_rate "Set the sample rate for the usrp device."

%feature("docstring") uhd_usrp_source::get_samp_rate "Get the sample rate for the usrp device. This is the actual sample rate and may differ from the rate set."

%feature("docstring") uhd_usrp_source::get_samp_rates "Get the possible sample rates for the usrp device."

%feature("docstring") uhd_usrp_source::set_center_freq "Tune the usrp device to the desired center frequency."

%feature("docstring") uhd_usrp_source::get_center_freq "Get the center frequency."

%feature("docstring") uhd_usrp_source::get_freq_range "Get the tunable frequency range."

%feature("docstring") uhd_usrp_source::set_gain "Set the gain for the dboard."

%feature("docstring") uhd_usrp_source::get_gain "Get the actual dboard gain setting."

%feature("docstring") uhd_usrp_source::get_gain_names "Get the actual dboard gain setting of named stage."

%feature("docstring") uhd_usrp_source::get_gain_range "Get the settable gain range."

%feature("docstring") uhd_usrp_source::set_antenna "Set the antenna to use."

%feature("docstring") uhd_usrp_source::get_antenna "Get the antenna in use."

%feature("docstring") uhd_usrp_source::get_antennas "Get a list of possible antennas."

%feature("docstring") uhd_usrp_source::set_bandwidth "Set the bandpass filter on the RF frontend."

%feature("docstring") uhd_usrp_source::set_auto_dc_offset "Enable/disable the automatic DC offset correction. The automatic correction subtracts out the long-run average.

When disabled, the averaging option operation is halted. Once halted, the average value will be held constant until the user re-enables the automatic correction or overrides the value by manually setting the offset."

%feature("docstring") uhd_usrp_source::set_dc_offset "Set a constant DC offset value. The value is complex to control both I and Q. Only set this when automatic correction is disabled."

%feature("docstring") uhd_usrp_source::set_iq_balance "Set the RX frontend IQ imbalance correction. Use this to adjust the magnitude and phase of I and Q."

%feature("docstring") uhd_usrp_source::get_sensor "Get a RF frontend sensor value."

%feature("docstring") uhd_usrp_source::get_sensor_names "Get a list of possible RF frontend sensor names."

%feature("docstring") uhd_usrp_source::get_dboard_sensor "DEPRECATED use get_sensor."

%feature("docstring") uhd_usrp_source::get_dboard_sensor_names "DEPRECATED use get_sensor_names."

%feature("docstring") uhd_usrp_source::get_mboard_sensor "Get a motherboard sensor value."

%feature("docstring") uhd_usrp_source::get_mboard_sensor_names "Get a list of possible motherboard sensor names."

%feature("docstring") uhd_usrp_source::set_clock_config "Set the clock configuration. DEPRECATED for set_time/clock_source."

%feature("docstring") uhd_usrp_source::set_time_source "Set the time source for the usrp device. This sets the method of time synchronization, typically a pulse per second or an encoded time. Typical options for source: external, MIMO."

%feature("docstring") uhd_usrp_source::get_time_source "Get the currently set time source."

%feature("docstring") uhd_usrp_source::get_time_sources "Get a list of possible time sources."

%feature("docstring") uhd_usrp_source::set_clock_source "Set the clock source for the usrp device. This sets the source for a 10 Mhz reference clock. Typical options for source: internal, external, MIMO."

%feature("docstring") uhd_usrp_source::get_clock_source "Get the currently set clock source."

%feature("docstring") uhd_usrp_source::get_clock_sources "Get a list of possible clock sources."

%feature("docstring") uhd_usrp_source::get_clock_rate "Get the master clock rate."

%feature("docstring") uhd_usrp_source::set_clock_rate "Set the master clock rate."

%feature("docstring") uhd_usrp_source::get_time_now "Get the current time registers."

%feature("docstring") uhd_usrp_source::get_time_last_pps "Get the time when the last pps pulse occured."

%feature("docstring") uhd_usrp_source::set_time_now "Sets the time registers immediately."

%feature("docstring") uhd_usrp_source::set_time_next_pps "Set the time registers at the next pps."

%feature("docstring") uhd_usrp_source::set_time_unknown_pps "Sync the time registers with an unknown pps edge."

%feature("docstring") uhd_usrp_source::set_command_time "Set the time at which the control commands will take effect.

A timed command will back-pressure all subsequent timed commands, assuming that the subsequent commands occur within the time-window. If the time spec is late, the command will be activated upon arrival."

%feature("docstring") uhd_usrp_source::clear_command_time "Clear the command time so future commands are sent ASAP."

%feature("docstring") uhd_usrp_source::get_dboard_iface "Get access to the underlying uhd dboard iface object."

%feature("docstring") uhd_usrp_source::get_device "Get access to the underlying uhd device object."

%feature("docstring") uhd_usrp_source::set_user_register "Perform write on the user configuration register bus. These only exist if the user has implemented custom setting registers in the device FPGA."

%feature("docstring") uhd_usrp_source::finite_acquisition "Convenience function for finite data acquisition. This is not to be used with the scheduler; rather, one can request samples from the USRP in python. //TODO assumes fc32"

%feature("docstring") uhd_usrp_source::finite_acquisition_v "Convenience function for finite data acquisition. This is the multi-channel version of finite_acquisition; This is not to be used with the scheduler; rather, one can request samples from the USRP in python. //TODO assumes fc32"

%feature("docstring") uhd_make_usrp_source "Make a new USRP source block.

The USRP source block receives samples and writes to a stream. The source block also provides API calls for receiver settings.

RX Stream tagging:

The following tag keys will be produced by the work function:


The timstamp tag value is a pmt tuple of the following: (uint64 seconds, and double fractional seconds). A timestamp tag is produced at start() and after overflows.

See the UHD manual for more detailed documentation:"