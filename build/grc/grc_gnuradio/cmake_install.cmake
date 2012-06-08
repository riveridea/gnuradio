# Install script for directory: /home/alexzh/gr_alex/gnuradio/grc/grc_gnuradio

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/grc_gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/grc/grc_gnuradio/__init__.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/grc_gnuradio" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/grc/grc_gnuradio/__init__.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/grc_gnuradio/__init__.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/grc_gnuradio/blks2" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/grc/grc_gnuradio/blks2/__init__.py"
    "/home/alexzh/gr_alex/gnuradio/grc/grc_gnuradio/blks2/error_rate.py"
    "/home/alexzh/gr_alex/gnuradio/grc/grc_gnuradio/blks2/packet.py"
    "/home/alexzh/gr_alex/gnuradio/grc/grc_gnuradio/blks2/selector.py"
    "/home/alexzh/gr_alex/gnuradio/grc/grc_gnuradio/blks2/tcp.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/grc_gnuradio/blks2" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/grc/grc_gnuradio/blks2/__init__.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/grc_gnuradio/blks2/error_rate.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/grc_gnuradio/blks2/packet.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/grc_gnuradio/blks2/selector.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/grc_gnuradio/blks2/tcp.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/grc_gnuradio/blks2/__init__.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/grc_gnuradio/blks2/error_rate.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/grc_gnuradio/blks2/packet.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/grc_gnuradio/blks2/selector.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/grc_gnuradio/blks2/tcp.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

