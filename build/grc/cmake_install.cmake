# Install script for directory: /home/alexzh/gr_alex/gnuradio/grc

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/gnuradio/conf.d" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/build/grc/grc.conf")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/grc" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/grc/__init__.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/grc" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/grc/__init__.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/__init__.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/grc/base/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/grc/blocks/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/grc/freedesktop/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/grc/grc_gnuradio/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/grc/gui/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/grc/python/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/grc/scripts/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/grc/examples/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

