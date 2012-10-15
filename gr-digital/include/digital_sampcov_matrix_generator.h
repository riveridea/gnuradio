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

#ifndef INCLUDED_DIGITAL_SAMPCOV_MATRIX_GENERATOR_H
#define INCLUDED_DIGITAL_SAMPCOV_MATRIX_GENERATOR_H

#include <digital_api.h>
#include <gr_sync_block.h>

class digital_sampcov_matrix_generator;
typedef boost::shared_ptr<digital_sampcov_matrix_generator> digital_sampcov_matrix_generator_sptr;

DIGITAL_API digital_sampcov_matrix_generator_sptr digital_make_sampcov_matrix_generator(	unsigned int vector_length, 
																							unsigned int number_of_vector);

/*!
 * \brief caclulate the sample covariance matrix for the incoming samples
 * \ingroup matrix based signal processing
 */
class DIGITAL_API digital_sampcov_matrix_generator : public gr_block
{
  friend DIGITAL_API digital_sampcov_matrix_generator_sptr digital_make_sampcov_matrix_generator( unsigned int vector_length, 
																									unsigned int number_of_vector);

  digital_sampcov_matrix_generator(unsigned int vector_length, 
									unsigned int number_of_vector);

 private:
  unsigned int d_vector_length;
  unsigned int d_number_of_vector;
  unsigned int d_vec_ind; //the vector index in processing 
  unsigned int d_len_ind; //the sample index within the current vector in processing 
  
  std::vector<gr_complex> d_sampcov_store;

 public:
  void forecast (int noutput_items, gr_vector_int &ninput_items_required);

  int general_work (int noutput_items,
		    gr_vector_int &ninput_items,
		    gr_vector_const_void_star &input_items,
		    gr_vector_void_star &output_items);
};

#endif
