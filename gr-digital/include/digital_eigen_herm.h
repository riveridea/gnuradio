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

#ifndef INCLUDED_DIGITAL_EIGEN_HERM_H
#define INCLUDED_DIGITAL_EIGEN_HERM_H

#include <digital_api.h>

class digital_eigen_herm;
typedef boost::shared_ptr<digital_eigen_herm> digital_eigen_herm_sptr;

DIGITAL_API digital_eigen_herm_sptr
digital_make_eigen_herm (unsigned int smooth_factor);


/*!
 * \brief convert a stream of items into a stream of blocks containing nitems_per_block
 * \ingroup slicedice_blk
 */
class DIGITAL_API digital_eigen_herm : public gr_block
{
  friend DIGITAL_API digital_eigen_herm_sptr
    digital_make_eigen_herm (unsigned int smooth_factor);

	digital_eigen_herm (unsigned int smooth_factor);
	
 private:
	unsigned int d_smooth_factor;

 public:
 	void forecast (int noutput_items, gr_vector_int &ninput_items_required);
	int general_work (int noutput_items,
						gr_vector_int &ninput_items,
	    				gr_vector_const_void_star &input_items,
	    				gr_vector_void_star &output_items);
};


#endif /* INCLUDED_DIGITAL_EIGEN_HERM_H */

