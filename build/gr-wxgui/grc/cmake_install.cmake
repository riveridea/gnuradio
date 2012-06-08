# Install script for directory: /home/alexzh/gr_alex/gnuradio/gr-wxgui/grc

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "wxgui")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/grc/blocks" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/wxgui_termsink.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/variable_chooser.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/wxgui_fftsink2.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/variable_check_box.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/variable_text_box.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/variable_static_text.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/wxgui_scopesink2.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/wxgui_histosink2.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/wxgui_constellationsink2.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/variable_slider.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/wxgui_numbersink2.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/notebook.xml"
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/wxgui_waterfallsink2.xml"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "wxgui")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "wxgui")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/grc_gnuradio/wxgui" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/__init__.py"
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/panel.py"
    "/home/alexzh/gr_alex/gnuradio/gr-wxgui/grc/top_block_gui.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "wxgui")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "wxgui")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/grc_gnuradio/wxgui" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gr-wxgui/grc/__init__.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-wxgui/grc/panel.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-wxgui/grc/top_block_gui.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gr-wxgui/grc/__init__.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-wxgui/grc/panel.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/gr-wxgui/grc/top_block_gui.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "wxgui")

