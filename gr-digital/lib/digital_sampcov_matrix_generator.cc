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

// must be defined to either 0 or 1
#define ENABLE_VOLK 1
#define LV_HAVE_SSE3


#include <digital_sampcov_matrix_generator.h>
#include <gr_io_signature.h>
#include <gr_expj.h>
#include <cstdio>

#if (ENABLE_VOLK)
#include <volk/volk_32fc_x2_multiply_conjugate_32fc_a.h>
#include <volk/volk.h>
#endif

digital_sampcov_matrix_generator_sptr
digital_make_sampcov_matrix_generator (unsigned int vector_length, 
										unsigned int number_of_vector)
{
  return gnuradio::get_initial_sptr(new digital_sampcov_matrix_generator (vector_length, number_of_vector));
}

digital_sampcov_matrix_generator::digital_sampcov_matrix_generator (unsigned int vector_length, 
					    unsigned int number_of_vector)
  : gr_block ("sampcov_matrix_generator",
	      gr_make_io_signature (1, 1, sizeof (gr_complex)*vector_length*number_of_vector),
	      gr_make_io_signature2 (2, 2, sizeof (gr_complex)*vector_length*vector_length, sizeof(char)*vector_length*vector_length)),
	d_vector_length(vector_length), 
	d_number_of_vector(number_of_vector)
{
  //set_relative_rate((double)(vector_length)/(double)(number_of_vector));   // buffer allocator hint
  
  d_sampcov_store.resize(d_vector_length*d_vector_length);
  std::fill(d_sampcov_store.begin(), d_sampcov_store.end(), 0);
  d_vector_mean.resize(vector_length);
  std::fill(d_vector_mean.begin(), d_vector_mean.end(), 0);
  
  //set_output_multiple (vector_length*vector_length); // ensure the noutput items are alwyas the multiple of vector_length
}

void
digital_sampcov_matrix_generator::forecast (int noutput_items, gr_vector_int &ninput_items_required)
{
  // Each time we just need d_vector_length samples and calcuate the smooth_factor*smooth_factor elements to fill
  // the output covariance matrix
  unsigned ninputs = ninput_items_required.size ();
  for (unsigned i = 0; i < ninputs; i++)
    ninput_items_required[i] = 1;
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

  //to test the time	
  //struct timespec te;
  static struct timespec t1, t2;
  double diff_s, diff_ns;

  clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &t1);
  
  unsigned int i, j, k;
  gr_complex mean = 0;
  float scale1 = 1.0/(float)(d_number_of_vector);
  float scale2 = 1.0/(float)(d_number_of_vector - 1);
  float scale3 = scale1/scale2;


#if (ENABLE_VOLK)
// Compute the autocorrelation matrix
  gr_complex c_vector[d_vector_length]; //to store the temp vector of each multiplication
  for(i = 0; i < d_number_of_vector; i++){
    for(j = 0; j < d_vector_length; j++){
        d_vector_mean[j] += scale1*iptr[i*d_vector_length + j];
        
        const gr_complex * a_vector = &iptr[i*d_vector_length], * b_vector = a_vector + j;
        unsigned int num_points = d_vector_length - j;
        volk_32fc_x2_multiply_conjugate_32fc_a_sse3(c_vector, a_vector, b_vector, num_points);
        for(k = 0; k < d_vector_length - j; k++){
            d_sampcov_store[k*d_vector_length + j] += scale2*c_vector[k];
            d_sampcov_store[j*d_vector_length + k] = 
                d_sampcov_store[k*d_vector_length + j]; // Hermitian Matrix
        }
    }
  }
  
#else
//traditional way  
  for(i = 0; i < d_number_of_vector; i++)
  {
	for(j = 0; j < d_vector_length; j++)
	{
		d_vector_mean[j] += scale1*iptr[i*d_vector_length + j];
		for(k = 0; k < d_vector_length; k++)
		{
			d_sampcov_store[j*d_vector_length + k] += 
				scale2*iptr[i*d_vector_length + k]*(std::conj(iptr[i*d_vector_length + j]));
			//d_sampcov_store[i*d_smooth_factor + j] += scale2*iptr[j]*(std::conj(iptr[i]));
		}
	}
  }
#endif

  for(i = 0; i < d_vector_length; i++){
    d_vector_mean[i] += scale1*d_vector_mean[i];
  }
  
  for(i = 0; i < d_vector_length; i++){
	//printf("mean[%d] = %e + j%e \n", i, std::real(d_vector_mean[i]), std::imag(d_vector_mean[i]));
    for(j = 0; j < d_vector_length; j++){
        d_sampcov_store[i*d_vector_length + j] -= 
            scale3*d_vector_mean[j]*(std::conj(d_vector_mean[i]));
    }
  }

  std::copy(d_sampcov_store.begin(), d_sampcov_store.end(), optr );
  outsig[0] = 1;// indicate the start of the covariance matrix

  std::fill(d_sampcov_store.begin(), d_sampcov_store.end(), 0);
  std::fill(d_vector_mean.begin(), d_vector_mean.end(), 0);
		
  consume_each(1);

  clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &t2);
  diff_s = difftime(t2.tv_sec, t1.tv_sec);
  diff_ns = t2.tv_nsec - t1.tv_nsec;
  fprintf(stderr, "It took me %f seconds and %f nanoseconds.\n", diff_s, diff_ns);  
  
  return 1;
}
