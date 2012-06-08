# Install script for directory: /home/alexzh/gr_alex/gnuradio/gr-trellis/grc

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/grc/blocks" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/grc/trellis_encoder_xx.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/grc/trellis_siso_combined_f.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/grc/trellis_viterbi_x.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/grc/trellis_metrics_x.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/grc/trellis_siso_f.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/grc/trellis_permutation.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/grc/trellis_viterbi_combined_xx.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/grc/trellis_sccc_encoder_xx.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/grc/trellis_sccc_decoder_x.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/grc/trellis_sccc_decoder_combined_xx.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/grc/trellis_pccc_encoder_xx.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/grc/trellis_pccc_decoder_x.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/grc/trellis_pccc_decoder_combined_xx.xml"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_python")

