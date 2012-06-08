# Install script for directory: /home/alexzh/gr_alex/gnuradio/gr-vocoder/swig

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "vocoder_python")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/vocoder/_vocoder_swig.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/vocoder/_vocoder_swig.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/vocoder/_vocoder_swig.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/vocoder" TYPE MODULE FILES "/home/alexzh/gr_alex/gnuradio/build/gr-vocoder/swig/_vocoder_swig.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/vocoder/_vocoder_swig.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/vocoder/_vocoder_swig.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/vocoder/_vocoder_swig.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/vocoder/_vocoder_swig.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "vocoder_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "vocoder_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/vocoder" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/build/gr-vocoder/swig/vocoder_swig.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "vocoder_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "vocoder_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/vocoder" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gr-vocoder/swig/vocoder_swig.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-vocoder/swig/vocoder_swig.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "vocoder_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "vocoder_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_swig.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_alaw_decode_bs.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_alaw_encode_sb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_codec2_decode_ps.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_codec2_encode_sp.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_cvsd_decode_bs.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_cvsd_encode_sb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_g721_decode_bs.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_g721_encode_sb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_g723_24_decode_bs.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_g723_24_encode_sb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_g723_40_decode_bs.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_g723_40_encode_sb.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_gsm_fr_encode_sp.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_gsm_fr_decode_ps.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_ulaw_decode_bs.i"
    "/home/alexzh/gr_alex/gnuradio/gr-vocoder/swig/vocoder_ulaw_encode_sb.i"
    "/home/alexzh/gr_alex/gnuradio/build/gr-vocoder/swig/vocoder_swig_doc.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "vocoder_swig")

