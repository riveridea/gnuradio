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

#include <digital_eigen_herm.h>
#include <gr_io_signature.h>
#include <string.h>
#include <stdio.h>
#include <ctime>

// for eigen value computing
#include <gsl/gsl_math.h>
#include <gsl/gsl_eigen.h>
#include <gsl/gsl_vector.h>
#include <gsl/gsl_complex_math.h>
#include <gsl/gsl_matrix_complex_double.h>
#include <gsl/gsl_vector_double.h>
#include <gsl/gsl_vector_complex.h>


digital_eigen_herm_sptr
digital_make_eigen_herm (unsigned int smooth_factor)
{
  return gnuradio::get_initial_sptr(new digital_eigen_herm(smooth_factor));
}

digital_eigen_herm::digital_eigen_herm (unsigned int smooth_factor)
  : gr_block  ("stream_to_vector",
		       gr_make_io_signature2 (2, 2, sizeof (gr_complex)*smooth_factor*smooth_factor, sizeof(char)*smooth_factor*smooth_factor),
		       gr_make_io_signature (1, 1, sizeof (float)*smooth_factor)),
    d_smooth_factor(smooth_factor)
{
}

void
digital_eigen_herm::forecast (int noutput_items, gr_vector_int &ninput_items_required)
{
  // Each time we just need a whole matrix to be ready
  unsigned ninputs = ninput_items_required.size ();
  for (unsigned i = 0; i < ninputs; i++)
    ninput_items_required[i] = 1;
}


int
digital_eigen_herm::general_work (int noutput_items,
                                    gr_vector_int &ninput_items,
                                    gr_vector_const_void_star &input_items,
                                    gr_vector_void_star &output_items)
{
  const gr_complex *in = (const gr_complex *) input_items[0];
  const char *signal_in = (const char *)input_items[1];

  int ret;
  int ds = d_smooth_factor;
  
  float *out = (float *) output_items[0];
  
  out[0] = 0;

  struct timespec t1, t2;
  clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &t1);
  
  if(signal_in[0] == 1){ 
      int i, j;
      gsl_matrix_complex *A = gsl_matrix_complex_alloc(ds, ds);
      for(i = 0; i < ds; i++)
      {
          for(j = 0; j < ds; j++)
          {
              gsl_matrix_complex_set(A, i, j, 
                         gsl_complex_rect(std::real(in[i*ds+j]), std::imag(in[i*ds+j])));
          }
      }
      
      gsl_vector *eval = gsl_vector_alloc (ds);
      
      gsl_eigen_herm_workspace * w = gsl_eigen_herm_alloc (ds);   
      gsl_eigen_herm(A, eval, w);
      gsl_eigen_herm_free (w);
      
      {
          int i;
          
          for (i = 0; i < ds; i++)
          {
              double eval_i 
                  = gsl_vector_get (eval, i);
              out[i] = eval_i;
          
              printf ("eigenvalue = %g\n", eval_i);

          }
      }

      
      gsl_vector_free (eval);
      gsl_matrix_complex_free (A) ;

      ret = 1;
  }
  else{
    printf("matrix messed up \n");            
    ret = -2;
  }

  printf("trace is %e \n", out[0]);

  clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &t2);
  //int difft = t2 - t1;
  double diff_s = difftime(t2.tv_sec, t1.tv_sec);
  double diff_ns = t2.tv_nsec - t1.tv_nsec;
  printf ("It took me %f seconds and %f nanoseconds.\n", diff_s, diff_ns);
  
  consume_each(1);
  return ret;
}

