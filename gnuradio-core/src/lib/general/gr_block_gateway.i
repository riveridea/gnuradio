/*
 * Copyright 2011-2012 Free Software Foundation, Inc.
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

////////////////////////////////////////////////////////////////////////
// standard includes
////////////////////////////////////////////////////////////////////////
%include <gnuradio.i>
%include <gr_tags.i>
%include <gr_feval.i>

////////////////////////////////////////////////////////////////////////
// block headers
////////////////////////////////////////////////////////////////////////
%{
#include <gr_block_gateway.h>
%}

////////////////////////////////////////////////////////////////////////
// data type support
////////////////////////////////////////////////////////////////////////
%template(int_vector_t) std::vector<int>;
%template(void_star_vector_t) std::vector<void *>;

////////////////////////////////////////////////////////////////////////
// block magic
////////////////////////////////////////////////////////////////////////
GR_SWIG_BLOCK_MAGIC(gr,block_gateway);
%include <gr_block_gateway.h>
