/* -*- c++ -*- */
/*
 * Copyright 2002,2004 Free Software Foundation, Inc.
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

/*
 * WARNING: This file is automatically generated by
 * generate_gr_freq_xlating_fir_filter_XXX.py  Any changes made to this file
 * will be overwritten.
 */

#ifndef @GUARD_NAME@
#define	@GUARD_NAME@

#include <gr_core_api.h>
#include <gr_sync_decimator.h>
#include <gr_rotator.h>

class @NAME@;
typedef boost::shared_ptr<@NAME@> @SPTR_NAME@;

/*!
 * Construct a FIR filter with the given taps and a composite frequency
 * translation that shifts center_freq down to zero Hz.  The frequency
 * translation logically comes before the filtering operation.
 */
GR_CORE_API @SPTR_NAME@
gr_make_@BASE_NAME@ (int decimation, const std::vector<@TAP_TYPE@> &taps,
		     double center_freq, double sampling_freq);


class @FIR_TYPE@;

/*!
 * \brief FIR filter combined with frequency translation with @I_TYPE@ input, @O_TYPE@ output and @TAP_TYPE@ taps
 *
 * This class efficiently combines a frequency translation
 * (typically "down conversion") with a FIR filter (typically low-pass)
 * and decimation.  It is ideally suited for a "channel selection filter"
 * and can be efficiently used to select and decimate a narrow band signal
 * out of wide bandwidth input.
 *
 * Uses a single input array to produce a single output array.
 * Additional inputs and/or outputs are ignored.
 */
class GR_CORE_API @NAME@ : public gr_sync_decimator
{
 public:
  virtual ~@NAME@ ();

  void set_center_freq (double center_freq);
  void set_taps (const std::vector<@TAP_TYPE@> &taps);

  int work (int noutput_items,
	    gr_vector_const_void_star &input_items,
	    gr_vector_void_star &output_items);

 private:
  friend GR_CORE_API @SPTR_NAME@
  gr_make_@BASE_NAME@ (int decimation, const std::vector<@TAP_TYPE@> &taps,
		       double center_freq, double sampling_freq);

 protected:
  std::vector<@TAP_TYPE@>	d_proto_taps;
  @FIR_TYPE@		       *d_composite_fir;
  gr_rotator			d_r;
  double			d_center_freq;
  double			d_sampling_freq;
  bool				d_updated;

  virtual void build_composite_fir ();

  /*!
   * Construct a FIR filter with the given taps and a composite frequency
   * translation that shifts center_freq down to zero Hz.  The frequency
   * translation logically comes before the filtering operation.
   */
  @NAME@ (int decimation,
			  const std::vector<@TAP_TYPE@> &taps,
			  double center_freq, double sampling_freq);
};

#endif /* _@NAME@_H_ */
