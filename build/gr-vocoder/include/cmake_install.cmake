# Install script for directory: /home/alexzh/gr_alex/gnuradio/gr-vocoder/include

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "vocoder_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_api.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_alaw_decode_bs.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_alaw_encode_sb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_codec2_decode_ps.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_codec2_encode_sp.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_cvsd_decode_bs.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_cvsd_encode_sb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_g721_decode_bs.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_g721_encode_sb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_g723_24_decode_bs.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_g723_24_encode_sb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_g723_40_decode_bs.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_g723_40_encode_sb.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_gsm_fr_decode_ps.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_gsm_fr_encode_sp.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_ulaw_decode_bs.h"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/include/vocoder_ulaw_encode_sb.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "vocoder_devel")

