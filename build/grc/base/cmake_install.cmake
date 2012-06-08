# Install script for directory: /home/alexzh/gr_alex/gnuradio/grc/base

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/grc/base" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/grc/base/odict.py"
    "/home/alexzh/gr_alex/gnuradio/grc/base/ParseXML.py"
    "/home/alexzh/gr_alex/gnuradio/grc/base/Block.py"
    "/home/alexzh/gr_alex/gnuradio/grc/base/Connection.py"
    "/home/alexzh/gr_alex/gnuradio/grc/base/Constants.py"
    "/home/alexzh/gr_alex/gnuradio/grc/base/Element.py"
    "/home/alexzh/gr_alex/gnuradio/grc/base/FlowGraph.py"
    "/home/alexzh/gr_alex/gnuradio/grc/base/Param.py"
    "/home/alexzh/gr_alex/gnuradio/grc/base/Platform.py"
    "/home/alexzh/gr_alex/gnuradio/grc/base/Port.py"
    "/home/alexzh/gr_alex/gnuradio/grc/base/__init__.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/grc/base" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/odict.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/ParseXML.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/Block.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/Connection.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/Constants.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/Element.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/FlowGraph.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/Param.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/Platform.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/Port.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/__init__.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/odict.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/ParseXML.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/Block.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/Connection.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/Constants.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/Element.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/FlowGraph.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/Param.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/Platform.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/Port.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/base/__init__.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/grc/base" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/grc/base/block_tree.dtd"
    "/home/alexzh/gr_alex/gnuradio/grc/base/flow_graph.dtd"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

