# Install script for directory: /home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/trellis" TYPE PROGRAM RENAME "fsm_utils.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-trellis/src/examples/python/fsm_utils.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/trellis" TYPE PROGRAM RENAME "test_tcm.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-trellis/src/examples/python/test_tcm.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/trellis" TYPE PROGRAM RENAME "test_tcm_parallel.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-trellis/src/examples/python/test_tcm_parallel.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/trellis" TYPE PROGRAM RENAME "test_tcm_combined.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-trellis/src/examples/python/test_tcm_combined.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/trellis" TYPE PROGRAM RENAME "test_sccc_hard.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-trellis/src/examples/python/test_sccc_hard.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/trellis" TYPE PROGRAM RENAME "test_sccc_soft.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-trellis/src/examples/python/test_sccc_soft.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/trellis" TYPE PROGRAM RENAME "test_sccc_turbo.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-trellis/src/examples/python/test_sccc_turbo.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/trellis" TYPE PROGRAM RENAME "test_viterbi_equalization1.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-trellis/src/examples/python/test_viterbi_equalization1.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/trellis" TYPE PROGRAM RENAME "test_viterbi_equalization.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-trellis/src/examples/python/test_viterbi_equalization.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/trellis" TYPE PROGRAM RENAME "test_turbo_equalization.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-trellis/src/examples/python/test_turbo_equalization.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/trellis" TYPE PROGRAM RENAME "test_turbo_equalization1.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-trellis/src/examples/python/test_turbo_equalization1.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/trellis" TYPE PROGRAM RENAME "test_turbo_equalization2.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-trellis/src/examples/python/test_turbo_equalization2.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/trellis" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/README")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/trellis/fsm_files" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/fsm_files/awgn1o2_128.fsm"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/fsm_files/awgn1o2_16.fsm"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/fsm_files/awgn1o2_4.fsm"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/fsm_files/awgn1o2_8.fsm"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/fsm_files/awgn2o3_16.fsm"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/fsm_files/awgn2o3_4.fsm"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/fsm_files/awgn2o3_4_msb.fsm"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/fsm_files/awgn2o3_4_msbG.fsm"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/fsm_files/awgn2o3_8.fsm"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/fsm_files/awgn2o4_4.fsm"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/fsm_files/disconnected.fsm"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/fsm_files/rep3.fsm"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/fsm_files/rep5.fsm"
    "/home/alexzh/gr_alex/gnuradio/gr-trellis/src/examples/python/fsm_files/simple.fsm"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "trellis_examples")

