# Install script for directory: /home/alexzh/gr_alex/gnuradio/gr-uhd/apps

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/uhd" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gr-uhd/apps/uhd_siggen_base.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/uhd" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/uhd_siggen_base.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/uhd_siggen_base.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM RENAME "uhd_fft" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/uhd_fft.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM RENAME "uhd_rx_cfile" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/uhd_rx_cfile.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM RENAME "uhd_siggen" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/uhd_siggen.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM RENAME "uhd_siggen_gui" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/uhd_siggen_gui.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM RENAME "uhd_rx_nogui" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/uhd_rx_nogui.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/hf_radio" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gr-uhd/apps/hf_radio/hfir.sci"
    "/home/alexzh/gr_alex/gnuradio/gr-uhd/apps/hf_radio/radio.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-uhd/apps/hf_radio/README.TXT"
    "/home/alexzh/gr_alex/gnuradio/gr-uhd/apps/hf_radio/ssb_taps"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/hf_radio" TYPE PROGRAM RENAME "input.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/hf_radio/input.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/hf_radio" TYPE PROGRAM RENAME "output.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/hf_radio/output.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/hf_radio" TYPE PROGRAM RENAME "ssbagc.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/hf_radio/ssbagc.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/hf_radio" TYPE PROGRAM RENAME "ssbdemod.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/hf_radio/ssbdemod.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/hf_radio" TYPE PROGRAM RENAME "startup.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/hf_radio/startup.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/hf_radio" TYPE PROGRAM RENAME "radio.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/hf_radio/radio.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/hf_radio" TYPE PROGRAM RENAME "ui.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/hf_radio/ui.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/hf_explorer" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gr-uhd/apps/hf_explorer/README"
    "/home/alexzh/gr_alex/gnuradio/gr-uhd/apps/hf_explorer/hfx_help"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/hf_explorer" TYPE PROGRAM RENAME "hfx.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/apps/hf_explorer/hfx.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

