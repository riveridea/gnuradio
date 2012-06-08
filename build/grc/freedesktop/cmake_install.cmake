# Install script for directory: /home/alexzh/gr_alex/gnuradio/grc/freedesktop

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/grc/freedesktop" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/grc/freedesktop/grc-icon-256.png"
    "/home/alexzh/gr_alex/gnuradio/grc/freedesktop/grc-icon-128.png"
    "/home/alexzh/gr_alex/gnuradio/grc/freedesktop/grc-icon-64.png"
    "/home/alexzh/gr_alex/gnuradio/grc/freedesktop/grc-icon-48.png"
    "/home/alexzh/gr_alex/gnuradio/grc/freedesktop/grc-icon-32.png"
    "/home/alexzh/gr_alex/gnuradio/grc/freedesktop/gnuradio-grc.xml"
    "/home/alexzh/gr_alex/gnuradio/grc/freedesktop/gnuradio-grc.desktop"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/gnuradio" TYPE PROGRAM FILES "/home/alexzh/gr_alex/gnuradio/build/grc/freedesktop/grc_setup_freedesktop")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

