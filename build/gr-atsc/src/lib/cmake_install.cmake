# Install script for directory: /home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "atsc_runtime")
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgnuradio-atsc-3.6.1git.so.0.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgnuradio-atsc-3.6.1git.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/alexzh/gr_alex/gnuradio/build/gr-atsc/src/lib/libgnuradio-atsc-3.6.1git.so.0.0.0"
    "/home/alexzh/gr_alex/gnuradio/build/gr-atsc/src/lib/libgnuradio-atsc-3.6.1git.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgnuradio-atsc-3.6.1git.so.0.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgnuradio-atsc-3.6.1git.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_REMOVE
           FILE "${file}")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "atsc_runtime")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "atsc_runtime")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gr-atsc/src/lib/libgnuradio-atsc.so"
    "/home/alexzh/gr_alex/gnuradio/build/gr-atsc/src/lib/libgnuradio-atsc-3.6.1git.so.0"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "atsc_runtime")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "atsc_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_api.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_consts.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_derandomizer.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_randomizer.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_rs_decoder.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_rs_encoder.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_interleaver.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_deinterleaver.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_trellis_encoder.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_viterbi_decoder.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_ds_to_softds.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_field_sync_mux.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_field_sync_demux.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_equalizer.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_fs_checker.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_bit_timing_loop.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_fpll.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_depad.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_pad.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc_types.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_basic_trellis_encoder.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_data_interleaver.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_diag_output.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_equalizer.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_equalizer_lms.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_equalizer_lms2.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_equalizer_nop.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_exp2_lp.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_fake_single_viterbi.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_fs_checker.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_fs_checker_naive.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_fs_correlator.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_fs_correlator_naive.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_pnXXX.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_randomizer.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_reed_solomon.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_root_raised_cosine.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_root_raised_cosine_bandpass.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_single_viterbi.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_slicer_agc.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_sliding_correlator.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_sssr.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_syminfo.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_sync_tag.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_trellis_encoder.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_viterbi_decoder.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsci_vsbtx_lp.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/convolutional_interleaver.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/create_atsci_equalizer.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/create_atsci_fs_checker.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/create_atsci_fs_correlator.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/fpll_btloop_coupling.h"
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/interleaver_fifo.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "atsc_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "atsc_python")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/_atsc.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/_atsc.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/_atsc.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio" TYPE MODULE FILES "/home/alexzh/gr_alex/gnuradio/build/gr-atsc/src/lib/_atsc.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/_atsc.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/_atsc.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/_atsc.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/_atsc.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "atsc_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "atsc_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/build/gr-atsc/src/lib/atsc.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "atsc_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "atsc_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gr-atsc/src/lib/atsc.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-atsc/src/lib/atsc.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "atsc_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "atsc_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gr-atsc/src/lib/atsc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gr-atsc/src/lib/atsc_swig_doc.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "atsc_swig")

