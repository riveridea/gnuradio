# Install script for directory: /home/alexzh/gr_alex/gnuradio/gnuradio-core/src/python/gnuradio

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/python/gnuradio/__init__.py"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/python/gnuradio/eng_notation.py"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/python/gnuradio/eng_option.py"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/python/gnuradio/gr_unittest.py"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/python/gnuradio/gr_xmlrunner.py"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/python/gnuradio/optfir.py"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/python/gnuradio/window.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/__init__.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/eng_notation.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/eng_option.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/gr_unittest.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/gr_xmlrunner.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/optfir.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/window.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/__init__.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/eng_notation.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/eng_option.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/gr_unittest.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/gr_xmlrunner.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/optfir.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/window.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/gr/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/gru/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/gruimpl/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/blks2/cmake_install.cmake")
  INCLUDE("/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/python/gnuradio/blks2impl/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

