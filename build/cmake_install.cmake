# Install script for directory: /home/alexzh/gr_alex/gnuradio

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "docs")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/gnuradio-3.6.1git" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/README"
    "/home/alexzh/gr_alex/gnuradio/README.hacking"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "docs")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/volk/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/docs/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gruel/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/grc/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-fft/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-atsc/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-audio/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-comedi/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-digital/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-noaa/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-pager/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-qtgui/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-trellis/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-uhd/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-shd/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-utils/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-video-sdl/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-vocoder/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-fcd/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-wavelet/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gr-wxgui/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/alexzh/gr_alex/gnuradio/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/alexzh/gr_alex/gnuradio/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
