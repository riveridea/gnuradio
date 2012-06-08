# Install script for directory: /home/alexzh/gr_alex/gnuradio/grc/gui

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/grc/gui" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/grc/gui/Block.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/Colors.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/Constants.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/Connection.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/Element.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/FlowGraph.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/Param.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/Platform.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/Port.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/Utils.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/ActionHandler.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/Actions.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/Bars.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/BlockTreeWindow.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/Dialogs.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/DrawingArea.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/FileDialogs.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/MainWindow.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/Messages.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/NotebookPage.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/PropsDialog.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/Preferences.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/StateCache.py"
    "/home/alexzh/gr_alex/gnuradio/grc/gui/__init__.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/grc/gui" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Block.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Colors.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Constants.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Connection.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Element.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/FlowGraph.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Param.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Platform.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Port.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Utils.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/ActionHandler.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Actions.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Bars.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/BlockTreeWindow.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Dialogs.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/DrawingArea.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/FileDialogs.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/MainWindow.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Messages.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/NotebookPage.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/PropsDialog.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Preferences.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/StateCache.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/__init__.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Block.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Colors.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Constants.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Connection.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Element.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/FlowGraph.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Param.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Platform.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Port.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Utils.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/ActionHandler.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Actions.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Bars.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/BlockTreeWindow.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Dialogs.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/DrawingArea.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/FileDialogs.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/MainWindow.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Messages.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/NotebookPage.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/PropsDialog.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/Preferences.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/StateCache.pyo"
    "/home/alexzh/gr_alex/gnuradio/build/grc/gui/__init__.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "grc")

