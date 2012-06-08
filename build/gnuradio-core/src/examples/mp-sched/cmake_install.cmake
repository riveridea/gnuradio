# Install script for directory: /home/alexzh/gr_alex/gnuradio/gnuradio-core/src/examples/mp-sched

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/mp-sched" TYPE PROGRAM RENAME "plot_flops.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/examples/mp-sched/plot_flops.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/mp-sched" TYPE PROGRAM RENAME "run_synthetic.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/examples/mp-sched/run_synthetic.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/mp-sched" TYPE PROGRAM RENAME "synthetic.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/examples/mp-sched/synthetic.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/mp-sched" TYPE PROGRAM RENAME "wfm_rcv_pll_to_wav.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/examples/mp-sched/wfm_rcv_pll_to_wav.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/mp-sched" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/examples/mp-sched/README")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

