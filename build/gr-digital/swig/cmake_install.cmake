# Install script for directory: /home/alexzh/gr_alex/gnuradio/gr-digital/swig

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/digital/_digital_swig.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/digital/_digital_swig.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/digital/_digital_swig.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/digital" TYPE MODULE FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/swig/_digital_swig.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/digital/_digital_swig.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/digital/_digital_swig.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/digital/_digital_swig.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/digital/_digital_swig.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/digital" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/swig/digital_swig.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/digital" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/swig/digital_swig.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/swig/digital_swig.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_swig.i"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/swig/digital_swig_doc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/swig/digital_generated.i"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/swig/digital_chunks_to_symbols_bf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/swig/digital_chunks_to_symbols_bc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/swig/digital_chunks_to_symbols_sf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/swig/digital_chunks_to_symbols_sc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/swig/digital_chunks_to_symbols_if.i"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/swig/digital_chunks_to_symbols_ic.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_additive_scrambler_bb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_binary_slicer_fb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_bytes_to_syms.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_clock_recovery_mm_cc.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_clock_recovery_mm_ff.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_cma_equalizer_cc.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_constellation.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_constellation_receiver_cb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_constellation_decoder_cb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_correlate_access_code_bb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_correlate_access_code_tag_bb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_costas_loop_cc.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_cpmmod_bc.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_crc32.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_descrambler_bb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_diff_decoder_bb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_diff_encoder_bb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_diff_phasor_cc.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_fll_band_edge_cc.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_framer_sink_1.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_glfsr_source_b.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_glfsr_source_f.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_gmskmod_bc.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_lms_dd_equalizer_cc.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_kurtotic_equalizer_cc.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_map_bb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_mpsk_receiver_cc.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_mpsk_snr_est_cc.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_ofdm_cyclic_prefixer.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_ofdm_frame_acquisition.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_ofdm_frame_sink.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_ofdm_insert_preamble.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_ofdm_mapper_bcv.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_ofdm_sampler.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_packet_sink.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_pfb_clock_sync_ccf.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_pfb_clock_sync_fff.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_pn_correlator_cc.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_probe_density_b.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_probe_mpsk_snr_est_c.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_scrambler_bb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/swig/digital_simple_framer.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_swig")

