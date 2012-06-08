# Install script for directory: /home/alexzh/gr_alex/gnuradio/grc/python

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/grc/python" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/grc/python/convert_hier.py"
    "/home/alexzh/gr_alex/gnuradio/grc/python/expr_utils.py"
    "/home/alexzh/gr_alex/gnuradio/grc/python/extract_docs.py"
    "/home/alexzh/gr_alex/gnuradio/grc/python/Block.py"
    "/home/alexzh/gr_alex/gnuradio/grc/python/Connection.py"
    "/home/alexzh/gr_alex/gnuradio/grc/python/Constants.py"
    "/home/alexzh/gr_alex/gnuradio/grc/python/FlowGraph.py"
    "/home/alexzh/gr_alex/gnuradio/grc/python/Generator.py"
    "/home/alexzh/gr_alex/gnuradio/grc/python/Param.py"
    "/home/alexzh/gr_alex/gnuradio/grc/python/Platform.py"
    "/home/alexzh/gr_alex/gnuradio/grc/python/Port.py"
    "/home/alexzh/gr_alex/gnuradio/grc/python/__init__.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/grc/python" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/convert_hier.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/expr_utils.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/extract_docs.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/Block.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/Connection.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/Constants.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/FlowGraph.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/Generator.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/Param.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/Platform.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/Port.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/__init__.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/convert_hier.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/expr_utils.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/extract_docs.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/Block.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/Connection.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/Constants.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/FlowGraph.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/Generator.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/Param.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/Platform.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/Port.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/python/__init__.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/grc/python" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/grc/python/block.dtd"
    "/home/alexzh/gr_alex/gnuradio/grc/python/default_flow_graph.grc"
    "/home/alexzh/gr_alex/gnuradio/grc/python/flow_graph.tmpl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

