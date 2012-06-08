# Install script for directory: /home/alexzh/gr_alex/gnuradio/gr-digital/include

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/include/digital_chunks_to_symbols_bf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/include/digital_chunks_to_symbols_bc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/include/digital_chunks_to_symbols_sf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/include/digital_chunks_to_symbols_sc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/include/digital_chunks_to_symbols_if.h"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/include/digital_chunks_to_symbols_ic.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_api.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_impl_glfsr.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_impl_mpsk_snr_est.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_additive_scrambler_bb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_binary_slicer_fb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_bytes_to_syms.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_clock_recovery_mm_cc.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_clock_recovery_mm_ff.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_cma_equalizer_cc.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_cpmmod_bc.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_constellation.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_constellation_receiver_cb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_constellation_decoder_cb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_correlate_access_code_bb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_correlate_access_code_tag_bb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_costas_loop_cc.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_crc32.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_descrambler_bb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_diff_decoder_bb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_diff_encoder_bb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_diff_phasor_cc.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_framer_sink_1.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_fll_band_edge_cc.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_glfsr_source_b.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_glfsr_source_f.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_gmskmod_bc.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_lms_dd_equalizer_cc.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_kurtotic_equalizer_cc.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_map_bb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_metric_type.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_mpsk_receiver_cc.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_mpsk_snr_est_cc.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_ofdm_cyclic_prefixer.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_ofdm_frame_acquisition.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_ofdm_frame_sink.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_ofdm_insert_preamble.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_ofdm_mapper_bcv.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_ofdm_sampler.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_packet_sink.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_pfb_clock_sync_ccf.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_pfb_clock_sync_fff.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_pn_correlator_cc.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_probe_density_b.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_probe_mpsk_snr_est_c.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_scrambler_bb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_simple_framer.h"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/include/digital_simple_framer_sync.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_devel")

