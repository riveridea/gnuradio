# Install script for directory: /home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/swig

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
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_runtime.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_runtime.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_runtime.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE MODULE FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/_gnuradio_core_runtime.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_runtime.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_runtime.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_runtime.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_runtime.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_runtime.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_runtime.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_runtime.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/swig/gnuradio_core_runtime.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/runtime_swig_doc.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_general.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_general.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_general.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE MODULE FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/_gnuradio_core_general.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_general.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_general.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_general.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_general.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_general.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_general.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_general.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/swig/gnuradio_core_general.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/general_swig_doc.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_gengen.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_gengen.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_gengen.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE MODULE FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/_gnuradio_core_gengen.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_gengen.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_gengen.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_gengen.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_gengen.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_gengen.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_gengen.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_gengen.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/swig/gnuradio_core_gengen.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gengen_swig_doc.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_filter.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_filter.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_filter.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE MODULE FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/_gnuradio_core_filter.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_filter.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_filter.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_filter.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_filter.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_filter.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_filter.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_filter.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/swig/gnuradio_core_filter.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/filter_swig_doc.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_io.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_io.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_io.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE MODULE FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/_gnuradio_core_io.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_io.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_io.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_io.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_io.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_io.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_io.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_io.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/swig/gnuradio_core_io.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/io_swig_doc.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_hier.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_hier.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_hier.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE MODULE FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/_gnuradio_core_hier.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_hier.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_hier.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_hier.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr/_gnuradio_core_hier.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_hier.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_hier.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core_hier.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/swig/gnuradio_core_hier.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/hier_swig_doc.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/swig/gnuradio.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/swig/gr_swig_block_magic.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/swig/gr_shared_ptr.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/swig/gnuradio_core.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/gnuradio/gr" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core.pyc"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/swig/gnuradio_core.pyo"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/swig/gnuradio_swig_bug_workaround.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

