# Install script for directory: /home/alexzh/gr_alex/gnuradio/gr-uhd/examples/python

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "fm_tx4.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/fm_tx4.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "fm_tx_2_daughterboards.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/fm_tx_2_daughterboards.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "max_power.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/max_power.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "usrp_am_mw_rcv.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/usrp_am_mw_rcv.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "usrp_nbfm_ptt.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/usrp_nbfm_ptt.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "usrp_nbfm_rcv.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/usrp_nbfm_rcv.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "usrp_spectrum_sense.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/usrp_spectrum_sense.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "usrp_tv_rcv_nogui.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/usrp_tv_rcv_nogui.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "usrp_tv_rcv.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/usrp_tv_rcv.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "usrp_wfm_rcv2_nogui.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/usrp_wfm_rcv2_nogui.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "usrp_wfm_rcv_fmdet.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/usrp_wfm_rcv_fmdet.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "usrp_wfm_rcv_nogui.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/usrp_wfm_rcv_nogui.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "usrp_wfm_rcv_pll.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/usrp_wfm_rcv_pll.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "usrp_wfm_rcv.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/usrp_wfm_rcv.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "usrp_wfm_rcv_sca.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/usrp_wfm_rcv_sca.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/uhd" TYPE PROGRAM RENAME "usrp_wxapt_rcv.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-uhd/examples/python/usrp_wxapt_rcv.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "uhd_python")

