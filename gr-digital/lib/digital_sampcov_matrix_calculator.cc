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

#include <digital_sampcov_matrix_calculator.h>
#include <gr_io_signature.h>
#include <gr_expj.h>
#include <cstdio>
#include <ctime>

digital_sampcov_matrix_calculator_sptr
digital_make_sampcov_matrix_calculator (unsigned int smooth_factor, 
										unsigned int number_of_vector)
{
  return gnuradio::get_initial_sptr(new digital_sampcov_matrix_calculator (smooth_factor, number_of_vector));
}

digital_sampcov_matrix_calculator::digital_sampcov_matrix_calculator (unsigned int smooth_factor, 
					    unsigned int number_of_vector)
  : gr_block ("sampcov_matrix_calculator",
	      gr_make_io_signature (1, 1, sizeof (gr_complex)*smooth_factor),
	      gr_make_io_signature2 (2, 2, sizeof (gr_complex)*smooth_factor*smooth_factor, sizeof(char)*smooth_factor*smooth_factor)),
	d_smooth_factor(smooth_factor), 
	d_number_of_vector(number_of_vector),
	d_round_ind(0)
{
  set_relative_rate(1.0/(double) smooth_factor);   // buffer allocator hint
  
  d_sampcov_store.resize(d_smooth_factor*d_smooth_factor);
  std::fill(d_sampcov_store.begin(), d_sampcov_store.end(), 0);
  d_vector_mean.resize(d_smooth_factor);
  std::fill(d_vector_mean.begin(), d_vector_mean.end(), 0);
}

void
digital_sampcov_matrix_calculator::forecast (int noutput_items, gr_vector_int &ninput_items_required)
{
  // Each time we just need d_smooth_factor samples and calcuate the smooth_factor*smooth_factor elements to fill
  // the output covariance matrix
  //int nreqd  = d_smooth_factor;
  unsigned ninputs = ninput_items_required.size ();
  for (unsigned i = 0; i < ninputs; i++)
    ninput_items_required[i] = 1;
}

int
digital_sampcov_matrix_calculator::general_work (int noutput_items,
				    gr_vector_int &ninput_items,
				    gr_vector_const_void_star &input_items,
				    gr_vector_void_star &output_items)
{
  const gr_complex *iptr = (const gr_complex *) input_items[0];

  gr_complex *optr = (gr_complex *) output_items[0];
  char *outsig = (char *) output_items[1];
  
  unsigned int index, length = d_smooth_factor*d_smooth_factor;
  for(index = 0; index < length; index++) outsig[index] = 0;
  
  // update the sample covariance matrix
  unsigned int i, j;
  int  ret;
  //int  t1 = clock(), t2;

  struct timespec t1, t2;
  clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &t1);

  float scale1 = 1.0/(float)(d_number_of_vector);
  float scale2 = 1.0/(float)(d_number_of_vector - 1);
  float scale3 = scale1/scale2;

  if(d_sampcov_store.size() == length){
	for(i = 0; i < d_smooth_factor; i++){
        //updat the mean for each element of the vector
        d_vector_mean[i] += scale1*iptr[i];
		for(j = 0; j < d_smooth_factor; j++){
			d_sampcov_store[i*d_smooth_factor + j] += scale2*iptr[j]*(std::conj(iptr[i]));
            //if(i == j) printf("%e + j%e", std::real(d_sampcov_store[i*d_smooth_factor + j]),
              //                            std::imag(d_sampcov_store[i*d_smooth_factor + j]));
		}
	}
	d_round_ind++;
	if(d_round_ind == d_number_of_vector){
		// done with the sample covariance matrix, move them to the output 
		// Add the mean items 
		for(i=0; i < d_smooth_factor; i++){
            //printf("mean[%d] = %e + j%e \n", i, std::real(d_vector_mean[i]), std::imag(d_vector_mean[i]));
            for(j = 0; j < d_smooth_factor; j++){
                d_sampcov_store[i*d_smooth_factor + j] -= 
                       scale3*d_vector_mean[j]*(std::conj(d_vector_mean[i]));
            }
        }
        printf("----------------------------------------\n");
		std::copy(d_sampcov_store.begin(), d_sampcov_store.end(), optr );
		outsig[0] = 1;// indicate the start of the covariance matrix
		// reset the store
		std::fill(d_sampcov_store.begin(), d_sampcov_store.end(), 0);
        std::fill(d_vector_mean.begin(), d_vector_mean.end(), 0);

        printf("1 sample convariance matrix generated \n");
		
		d_round_ind = 0;
		ret = 1;
	}
	else if(d_round_ind < d_number_of_vector){
		// need to wait the next round of vector
		//printf("waiting next vector, %d", d_round_ind);
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

  //t2 = clock();
  clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &t2);
  //int difft = t2 - t1;
  double diff_s = difftime(t2.tv_sec, t1.tv_sec);
  double diff_ns = t2.tv_nsec - t1.tv_nsec;
  printf ("It took me %f seconds and %f nanoseconds.\n", diff_s, diff_ns);
  consume_each(1);
  return ret;
}
