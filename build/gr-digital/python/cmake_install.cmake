# Install script for directory: /home/alexzh/gr_alex/gnuradio/gr-digital/python

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/digital" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/__init__.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/bpsk.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/cpm.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/crc.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/generic_mod_demod.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/gmsk.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/modulation_utils.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/ofdm.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/ofdm_packet_utils.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/ofdm_receiver.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/ofdm_sync_fixed.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/ofdm_sync_ml.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/ofdm_sync_pnac.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/ofdm_sync_pn.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/packet_utils.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/pkt.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/psk.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/qam.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/qpsk.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/digital" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/__init__.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/bpsk.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/cpm.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/crc.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/generic_mod_demod.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/gmsk.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/modulation_utils.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/ofdm.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/ofdm_packet_utils.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/ofdm_receiver.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/ofdm_sync_fixed.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/ofdm_sync_ml.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/ofdm_sync_pnac.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/ofdm_sync_pn.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/packet_utils.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/pkt.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/psk.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/qam.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/qpsk.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/__init__.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/bpsk.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/cpm.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/crc.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/generic_mod_demod.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/gmsk.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/modulation_utils.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/ofdm.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/ofdm_packet_utils.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/ofdm_receiver.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/ofdm_sync_fixed.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/ofdm_sync_ml.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/ofdm_sync_pnac.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/ofdm_sync_pn.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/packet_utils.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/pkt.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/psk.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/qam.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/qpsk.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/digital/utils" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/utils/__init__.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/utils/gray_code.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/utils/mod_codes.py"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/python/utils/alignment.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/digital/utils" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/utils/__init__.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/utils/gray_code.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/utils/mod_codes.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/utils/alignment.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/utils/__init__.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/utils/gray_code.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/utils/mod_codes.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-digital/python/utils/alignment.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

