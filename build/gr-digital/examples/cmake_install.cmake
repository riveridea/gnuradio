# Install script for directory: /home/alexzh/gr_alex/gnuradio/gr-digital/examples

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital" TYPE PROGRAM RENAME "example_costas.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/example_costas.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital" TYPE PROGRAM RENAME "example_fll.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/example_fll.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital" TYPE PROGRAM RENAME "example_timing.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/example_timing.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital" TYPE PROGRAM RENAME "run_length.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/run_length.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital" TYPE PROGRAM RENAME "gen_whitener.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/gen_whitener.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital" TYPE PROGRAM RENAME "snr_estimators.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/snr_estimators.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/narrowband" TYPE PROGRAM RENAME "transmit_path.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/narrowband/transmit_path.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/narrowband" TYPE PROGRAM RENAME "receive_path.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/narrowband/receive_path.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/narrowband" TYPE PROGRAM RENAME "uhd_interface.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/narrowband/uhd_interface.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/narrowband" TYPE PROGRAM RENAME "benchmark_tx.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/narrowband/benchmark_tx.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/narrowband" TYPE PROGRAM RENAME "benchmark_rx.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/narrowband/benchmark_rx.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/narrowband" TYPE PROGRAM RENAME "tx_voice.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/narrowband/tx_voice.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/narrowband" TYPE PROGRAM RENAME "rx_voice.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/narrowband/rx_voice.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/narrowband" TYPE PROGRAM RENAME "digital_bert_rx.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/narrowband/digital_bert_rx.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/narrowband" TYPE PROGRAM RENAME "digital_bert_tx.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/narrowband/digital_bert_tx.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/narrowband" TYPE PROGRAM RENAME "tunnel.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/narrowband/tunnel.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/ofdm" TYPE PROGRAM RENAME "benchmark_add_channel.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/ofdm/benchmark_add_channel.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/ofdm" TYPE PROGRAM RENAME "benchmark_rx.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/ofdm/benchmark_rx.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/ofdm" TYPE PROGRAM RENAME "benchmark_tx.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/ofdm/benchmark_tx.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/ofdm" TYPE PROGRAM RENAME "gr_plot_ofdm.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/ofdm/gr_plot_ofdm.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/ofdm" TYPE PROGRAM RENAME "ofdm_mod_demod_test.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/ofdm/ofdm_mod_demod_test.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/ofdm" TYPE PROGRAM RENAME "receive_path.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/ofdm/receive_path.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/ofdm" TYPE PROGRAM RENAME "transmit_path.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/ofdm/transmit_path.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/ofdm" TYPE PROGRAM RENAME "tunnel.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/ofdm/tunnel.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/ofdm" TYPE PROGRAM RENAME "uhd_interface.py" FILES "/home/alexzh/gr_alex/gnuradio/build/gr-digital/examples/ofdm/uhd_interface.py.exe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/examples/digital/demod" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gr-digital/examples/demod/digital_freq_lock.grc"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/examples/demod/mpsk_demod.grc"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/examples/demod/pam_sync.grc"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/examples/demod/pam_timing.grc"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/examples/demod/ber_simulation.grc"
    "/home/alexzh/gr_alex/gnuradio/gr-digital/examples/demod/dpsk_loopback.grc"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "digital_python")

