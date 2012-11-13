/*
 * Copyright 2011 Free Software Foundation, Inc.
 *
 * This file is part of GNU Radio
 *
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */
#ifndef INCLUDED_GR_UHD_PULSE_SOURCE_H
#define INCLUDED_GR_UHD_PULSE_SOURCE_H
  
#include <gr_uhd_api.h>
#include <gr_sync_block.h>
#include <complex>

class uhd_pulse_source;

GR_UHD_API boost::shared_ptr<uhd_pulse_source> uhd_make_uhd_pulse_source(
        const uint64_t start_secs,
        const double start_fracs,
        const double samp_rate,
        const double idle_duration,
        const double burst_duration
);

class GR_UHD_API uhd_pulse_source : public gr_sync_block{
public:

    uhd_pulse_source(
        const uint64_t start_secs,
        const double start_fracs,
        const double samp_rate,
        const double idle_duration,
        const double burst_duration
    );

    void make_time_tag(const uint64_t tag_count);

    void make_sob_tag(const uint64_t tag_count);

    void make_eob_tag(const uint64_t tag_count);

    int work(
        int noutput_items,
        gr_vector_const_void_star &input_items,
        gr_vector_void_star &output_items
    );

private:
    uint64_t _time_secs;
    double _time_fracs;
    const double _samp_rate;
    const uint64_t _samps_per_burst;
    const double _cycle_duration;
    uint64_t _samps_left_in_burst;
    bool _do_new_burst;

};
#endif /* INCLUDED_GR_UHD_PULSE_SOURCE_H */