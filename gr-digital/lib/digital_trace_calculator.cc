/* -*- c++ -*- */
/*
 * Copyright 2004,2005,2010 Free Software Foundation, Inc.
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

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <digital_trace_calculator.h>
#include <gr_io_signature.h>
#include <string.h>
#include <iostream>

digital_trace_calculator_sptr
digital_make_trace_calculator (unsigned int smooth_factor)
{
  return gnuradio::get_initial_sptr(new digital_trace_calculator(smooth_factor));
}

digital_trace_calculator::digital_trace_calculator (unsigned int smooth_factor)
  : gr_sync_decimator ("stream_to_vector",
		       gr_make_io_signature2 (2, 2, sizeof (gr_complex), sizeof(char)),
		       gr_make_io_signature (1, 1, sizeof (float)),
		       smooth_factor*smooth_factor),
    d_smooth_factor(smooth_factor)
{
}

int
digital_trace_calculator::work (int noutput_items,
			     gr_vector_const_void_star &input_items,
			     gr_vector_void_star &output_items)
{
  const gr_complex *in = (const gr_complex *) input_items[0];
  const char *signal_in = (const char *)input_items[1];

  int ret;
  
  float *out = (float *) output_items[0];
  
  unsigned int i;
  out[0] = 0;
  if(signal_in[0] == 1){ 
      for(i = 0; i < d_smooth_factor; i++){
    	out[0] += in[i*d_smooth_factor].real();
      }
      ret = noutput_items;
  }
  else{
    std::cout<< "matrix messed up \n";            
    ret = noutput_items;
  }

  std::cout << "trace is %e \n" << out[0];
  return ret;
}
