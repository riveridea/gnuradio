/* -*- c++ -*- */
/*
 * Copyright 2007,2011 Free Software Foundation, Inc.
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

#ifndef INCLUDED_DIGITAL_SAMPCOV_MATRIX_CALCULATOR_H
#define INCLUDED_DIGITAL_SAMPCOV_MATRIX_CALCULATOR_H

#include <digital_api.h>
#include <gr_sync_block.h>

class digital_sampcov_matrix_calculator;
typedef boost::shared_ptr<digital_sampcov_matrix_calculator> digital_sampcov_matrix_calculator_sptr;

DIGITAL_API digital_sampcov_matrix_calculator_sptr digital_make_sampcov_matrix_calculator(	unsigned int smooth_factor, 
																							unsigned int number_of_vector);

/*!
 * \brief caclulate the sample covariance matrix for the incoming samples
 * \ingroup matrix based signal processing
 */
class DIGITAL_API digital_sampcov_matrix_calculator : public gr_block
{
  friend DIGITAL_API digital_sampcov_matrix_calculator_sptr digital_make_sampcov_matrix_calculator( unsigned int smooth_factor, 
																									unsigned int number_of_vector,
																									unsigned int interval_cnt);

  digital_sampcov_matrix_calculator(unsigned int smooth_factor, 
									unsigned int number_of_vector,
									unsigned int interval_cnt);

 private:
  unsigned int d_smooth_factor;
  unsigned int d_number_of_vector;
  unsigned int d_interval_cnt;  //store the interval count for sample covariance matrix

  unsigned int d_round_ind; //indicating the index of the first sample within the whole needed samples for each incoming item  
  unsigned int d_interval_ind; // used for internal indicator of the interval count
  
  std::vector<gr_complex> d_sampcov_store;
  std::vector<gr_complex> d_vector_mean;

 public:
  void forecast (int noutput_items, gr_vector_int &ninput_items_required);

  int general_work (int noutput_items,
		    gr_vector_int &ninput_items,
		    gr_vector_const_void_star &input_items,
		    gr_vector_void_star &output_items);
};

#endif
