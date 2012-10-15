/* -*- c++ -*- */
/*
 * Copyright 2004,2006 Free Software Foundation, Inc.
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

#ifndef INCLUDED_DIGITAL_TRACE_CALCULATOR_H
#define INCLUDED_DIGITAL_TRACE_CALCULATOR_H

#include <digital_api.h>
#include <gr_sync_decimator.h>

class digital_trace_calculator;
typedef boost::shared_ptr<digital_trace_calculator> digital_trace_calculator_sptr;

DIGITAL_API digital_trace_calculator_sptr
digital_make_trace_calculator (unsigned int smooth_factor);


/*!
 * \brief convert a stream of items into a stream of blocks containing nitems_per_block
 * \ingroup slicedice_blk
 */
class DIGITAL_API digital_trace_calculator : public gr_sync_decimator
{
  friend DIGITAL_API digital_trace_calculator_sptr
    digital_make_trace_calculator (unsigned int smooth_factor);
	
 private:
	unsigned int d_smooth_factor;

 protected:
 	digital_trace_calculator (unsigned int smooth_factor);

 public:
 	void forecast (int noutput_items, gr_vector_int &ninput_items_required);
	int general_work (int noutput_items,
	    gr_vector_const_void_star &input_items,
	    gr_vector_void_star &output_items);
};


#endif /* INCLUDED_DIGITAL_TRACE_CALCULATOR_H */
