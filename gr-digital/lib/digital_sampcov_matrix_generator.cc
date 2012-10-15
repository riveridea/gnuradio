/* -*- c++ -*- */
/*
 * Copyright 2007,2008,2010,2011 Free Software Foundation, Inc.
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

#include <digital_sampcov_matrix_generator.h>
#include <gr_io_signature.h>
#include <gr_expj.h>
#include <cstdio>

digital_sampcov_matrix_generator_sptr
digital_make_sampcov_matrix_generator (unsigned int vector_length, 
										unsigned int number_of_vector)
{
  return gnuradio::get_initial_sptr(new digital_sampcov_matrix_generator (vector_length, number_of_vector));
}

digital_sampcov_matrix_generator::digital_sampcov_matrix_generator (unsigned int vector_length, 
					    unsigned int number_of_vector)
  : gr_block ("sampcov_matrix_generator",
	      gr_make_io_signature (1, 1, sizeof (gr_complex)),
	      gr_make_io_signature2 (2, 2, sizeof (gr_complex), sizeof(char))),
	d_vector_length(vector_length), 
	d_number_of_vector(number_of_vector),
	d_round_ind(0)
{
  set_relative_rate(1.0/(double) vector_length);   // buffer allocator hint
  
  d_sampcov_store.resize(d_vector_length*d_vector_length);
  std::fill(d_sampcov_store.begin(), d_sampcov_store.end(), 0);
  
  set_output_multiple (vector_length); // ensure the noutput items are alwyas the multiple of vector_length
}

void
digital_sampcov_matrix_generator::forecast (int noutput_items, gr_vector_int &ninput_items_required)
{
  // Each time we just need d_vector_length samples and calcuate the smooth_factor*smooth_factor elements to fill
  // the output covariance matrix
  int nreqd  = d_vector_length;
  unsigned ninputs = ninput_items_required.size ();
  for (unsigned i = 0; i < ninputs; i++)
    ninput_items_required[i] = nreqd;
}

int
digital_sampcov_matrix_generator::general_work (int noutput_items,
				    gr_vector_int &ninput_items,
				    gr_vector_const_void_star &input_items,
				    gr_vector_void_star &output_items)
{
  const gr_complex *iptr = (const gr_complex *) input_items[0];

  gr_complex *optr = (gr_complex *) output_items[0]; // output the sample covariance matrix
  char *outsig = (char *) output_items[1];  
  
  unsigned int index, length = d_vector_length*d_vector_length;
  for(index = 0; index < length; index++) outsig[index] = 0;
  
  // update the sample covariance matrix
  unsigned int i, j;
  int  ret;
  if(d_sampcov_store.size() == length){
	for(i = 0; i < d_vector_length; i++){
		for(j = 0; j < d_vector_length; j++){
			d_sampcov_store[i*d_vector_length + j] = iptr[i]*iptr[j];
		}
	}
	d_round_ind++;
	if(d_round_ind == d_number_of_vector){
		// done with the sample covariance matrix, move them to the output 
		std::copy(d_sampcov_store.begin(), d_sampcov_store.end(), optr );
		outsig[0] = 1;// indicate the start of the covariance matrix
		// reset the store
		std::fill(d_sampcov_store.begin(), d_sampcov_store.end(), 0);

        printf("1 sample convariance matrix generated \n");
		
		d_round_ind = 0;
		ret = 1;
	}
	else if(d_round_ind < d_number_of_vector){
		// need to wait the next round of vector
		ret = -2;
	}
	else{
		printf("error in number of vector \n");
        d_round_ind = 0;
		ret = -2;
	}
  }
  else{ 
	printf("error in d_sampcov_store size \n");
    d_round_ind = 0;
	ret = -2;
  }
  
  consume_each(1);
  return ret;
}
