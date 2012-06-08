# Install script for directory: /home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_basic_block.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_flowgraph.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_flat_flowgraph.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_block.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_block_detail.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_block_executor.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_hier_block2.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_hier_block2_detail.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_buffer.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_complex.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_dispatcher.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_error_handler.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_io_signature.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_local_sighandler.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_message.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_msg_accepter.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_msg_handler.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_msg_queue.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_pagesize.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_preferences.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_realtime.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_runtime_types.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_scheduler.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_scheduler_sts.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_scheduler_tpb.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_select_handler.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_single_threaded_scheduler.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_sptr_magic.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_sync_block.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_sync_decimator.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_sync_interpolator.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_top_block.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_top_block_impl.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_tpb_detail.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_tpb_thread_body.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_timer.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_sys_paths.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_types.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_unittests.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_vmcircbuf.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_tags.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_basic_block.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_block.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_block_detail.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_hier_block2.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_buffer.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_dispatcher.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_error_handler.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_io_signature.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_message.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_msg_handler.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_msg_queue.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_realtime.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_single_threaded_scheduler.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_sync_block.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_sync_decimator.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_sync_interpolator.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_tags.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/gr_top_block.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/runtime/runtime.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_ccc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_ccc_generic.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_ccf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_ccf_generic.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_fcc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_fcc_generic.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_fff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_fff_generic.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_filter_ccc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_filter_ccf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_filter_fcc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_filter_fff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_filter_fsf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_filter_scc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_fsf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_fsf_generic.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_scc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_scc_generic.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_sysconfig.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_sysconfig_generic.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_util.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_freq_xlating_fir_filter_ccc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_freq_xlating_fir_filter_ccf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_freq_xlating_fir_filter_fcc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_freq_xlating_fir_filter_fcf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_freq_xlating_fir_filter_scc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_freq_xlating_fir_filter_scf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_interp_fir_filter_ccc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_interp_fir_filter_ccf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_interp_fir_filter_fcc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_interp_fir_filter_fff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_interp_fir_filter_fsf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_interp_fir_filter_scc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_rational_resampler_base_ccc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_rational_resampler_base_ccf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_rational_resampler_base_fcc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_rational_resampler_base_fff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_rational_resampler_base_fsf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_rational_resampler_base_scc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gri_fir_filter_with_buffer_ccc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gri_fir_filter_with_buffer_ccf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gri_fir_filter_with_buffer_fcc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gri_fir_filter_with_buffer_fff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gri_fir_filter_with_buffer_fsf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gri_fir_filter_with_buffer_scc.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/complex_dotprod_generic.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/complex_dotprod_x86.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/fcomplex_dotprod_x86.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/ccomplex_dotprod_generic.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/ccomplex_dotprod_x86.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/float_dotprod_generic.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/float_dotprod_x86.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_altivec.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_cpu.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gri_fft_filter_fff_generic.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gri_fft_filter_ccc_generic.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_fir_sysconfig_x86.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_fir_sysconfig_powerpc.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_rotator.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_sincos.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_single_pole_iir.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_vec_types.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gri_goertzel.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gri_iir.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gri_mmse_fir_interpolator.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gri_mmse_fir_interpolator_cc.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/qa_filter.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/short_dotprod_generic.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/short_dotprod_x86.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/sse_debug.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_filter_ccc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_filter_ccf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_filter_fcc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_filter_fff.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_filter_fsf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_fir_filter_scc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_freq_xlating_fir_filter_ccc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_freq_xlating_fir_filter_ccf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_freq_xlating_fir_filter_fcc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_freq_xlating_fir_filter_fcf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_freq_xlating_fir_filter_scc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_freq_xlating_fir_filter_scf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_interp_fir_filter_ccc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_interp_fir_filter_ccf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_interp_fir_filter_fcc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_interp_fir_filter_fff.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_interp_fir_filter_fsf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_interp_fir_filter_scc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_rational_resampler_base_ccc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_rational_resampler_base_ccf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_rational_resampler_base_fcc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_rational_resampler_base_fff.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_rational_resampler_base_fsf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/gr_rational_resampler_base_scc.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/filter.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/filter/filter_generated.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_adaptive_fir_ccc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_adaptive_fir_ccc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_adaptive_fir_ccf.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_adaptive_fir_ccf.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_dc_blocker_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_dc_blocker_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_dc_blocker_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_dc_blocker_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_fft_filter_ccc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_fft_filter_ccc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_fft_filter_fff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_fft_filter_fff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_filter_delay_fc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_filter_delay_fc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_fractional_interpolator_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_fractional_interpolator_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_fractional_interpolator_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_fractional_interpolator_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_goertzel_fc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_goertzel_fc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_hilbert_fc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_hilbert_fc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_iir_filter_ffd.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_iir_filter_ffd.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_single_pole_iir_filter_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_single_pole_iir_filter_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_single_pole_iir_filter_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_single_pole_iir_filter_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_channelizer_ccf.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_channelizer_ccf.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_synthesizer_ccf.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_synthesizer_ccf.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_decimator_ccf.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_decimator_ccf.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_interpolator_ccf.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_interpolator_ccf.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_arb_resampler_ccf.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_arb_resampler_ccf.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_arb_resampler_fff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_arb_resampler_fff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_clock_sync_ccf.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_clock_sync_ccf.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_clock_sync_fff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/filter/gr_pfb_clock_sync_fff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/viterbi/viterbi.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_core_api.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_circular_file.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_constants.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_count_bits.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_expj.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_fft_vcc_fftw.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_fxpt.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_fxpt_nco.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_fxpt_vco.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_log2_const.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_math.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_misc.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_nco.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_random.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_reverse.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_simple_framer_sync.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_test_types.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_vco.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_add_const_ss.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_agc_cc.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_agc_ff.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_agc2_cc.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_agc2_ff.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_char_to_float.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_control_loop.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_debugger_hook.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_fft.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_float_to_char.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_float_to_int.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_float_to_short.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_float_to_uchar.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_lfsr.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_glfsr.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_interleaved_short_to_complex.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_lfsr_15_1_0.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_lfsr_32k.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_int_to_float.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_short_to_float.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_uchar_to_float.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/malloc16.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/random.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/general.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_constants.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_agc_cc.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_agc_ff.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_agc2_cc.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_agc2_ff.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gri_control_loop.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/complex_vec_test.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/complex_vec_test.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_add_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_add_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_additive_scrambler_bb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_additive_scrambler_bb.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_agc_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_agc_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_agc_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_agc_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_agc2_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_agc2_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_agc2_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_agc2_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_align_on_samplenumbers_ss.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_align_on_samplenumbers_ss.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_bin_statistics_f.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_bin_statistics_f.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_bytes_to_syms.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_bytes_to_syms.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_char_to_float.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_char_to_float.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_char_to_short.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_char_to_short.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_check_counting_s.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_check_counting_s.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_check_lfsr_32k_s.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_check_lfsr_32k_s.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_complex_to_interleaved_short.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_complex_to_interleaved_short.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_complex_to_xxx.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_complex_to_xxx.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_conjugate_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_conjugate_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_copy.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_copy.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_cpfsk_bc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_cpfsk_bc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_cpm.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_cpm.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_ctcss_squelch_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_ctcss_squelch_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_decode_ccsds_27_fb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_decode_ccsds_27_fb.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_diff_decoder_bb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_diff_decoder_bb.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_diff_encoder_bb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_diff_encoder_bb.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_diff_phasor_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_diff_phasor_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_dpll_bb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_dpll_bb.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_deinterleave.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_deinterleave.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_delay.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_delay.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_encode_ccsds_27_bb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_encode_ccsds_27_bb.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_fake_channel_coder_pp.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_fake_channel_coder_pp.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_feedforward_agc_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_feedforward_agc_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_feval.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_feval.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_fft_vcc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_fft_vcc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_fft_vfc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_fft_vfc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_firdes.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_firdes.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_float_to_char.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_float_to_char.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_float_to_complex.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_float_to_complex.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_float_to_int.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_float_to_int.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_float_to_short.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_float_to_short.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_float_to_uchar.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_float_to_uchar.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_fmdet_cf.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_fmdet_cf.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_frequency_modulator_fc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_frequency_modulator_fc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_framer_sink_1.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_framer_sink_1.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_glfsr_source_b.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_glfsr_source_b.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_glfsr_source_f.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_glfsr_source_f.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_head.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_head.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_int_to_float.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_int_to_float.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_interleave.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_interleave.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_interleaved_short_to_complex.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_interleaved_short_to_complex.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_iqcomp_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_iqcomp_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_keep_one_in_n.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_keep_one_in_n.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_kludge_copy.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_kludge_copy.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_lfsr_32k_source_s.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_lfsr_32k_source_s.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_map_bb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_map_bb.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_multiply_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_multiply_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_multiply_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_multiply_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_multiply_const_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_multiply_const_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_multiply_const_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_multiply_const_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_multiply_conjugate_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_multiply_conjugate_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_nlog10_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_nlog10_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_nop.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_nop.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_null_sink.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_null_sink.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_null_source.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_null_source.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_pa_2x2_phase_combiner.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_pa_2x2_phase_combiner.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_packet_sink.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_packet_sink.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_peak_detector2_fb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_peak_detector2_fb.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_phase_modulator_fc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_phase_modulator_fc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_pll_carriertracking_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_pll_carriertracking_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_pll_freqdet_cf.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_pll_freqdet_cf.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_pll_refout_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_pll_refout_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_pn_correlator_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_pn_correlator_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_prefs.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_prefs.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_probe_avg_mag_sqrd_c.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_probe_avg_mag_sqrd_c.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_probe_avg_mag_sqrd_cf.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_probe_avg_mag_sqrd_cf.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_probe_avg_mag_sqrd_f.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_probe_avg_mag_sqrd_f.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_pwr_squelch_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_pwr_squelch_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_pwr_squelch_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_pwr_squelch_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_quadrature_demod_cf.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_quadrature_demod_cf.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_rail_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_rail_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_regenerate_bb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_regenerate_bb.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_remez.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_remez.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_rms_cf.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_rms_cf.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_rms_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_rms_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_repeat.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_repeat.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_short_to_float.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_short_to_float.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_short_to_char.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_short_to_char.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_simple_correlator.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_simple_correlator.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_simple_framer.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_simple_framer.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_simple_squelch_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_simple_squelch_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_skiphead.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_skiphead.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_squelch_base_cc.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_squelch_base_cc.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_squelch_base_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_squelch_base_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_stream_mux.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_stream_mux.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_stream_to_streams.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_stream_to_streams.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_stream_to_vector.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_stream_to_vector.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_streams_to_stream.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_streams_to_stream.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_streams_to_vector.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_streams_to_vector.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_stretch_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_stretch_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_test.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_test.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_threshold_ff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_threshold_ff.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_throttle.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_throttle.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_transcendental.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_transcendental.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_uchar_to_float.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_uchar_to_float.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_vco_f.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_vco_f.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_vector_map.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_vector_map.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_vector_to_stream.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_vector_to_stream.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_vector_to_streams.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_vector_to_streams.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_unpack_k_bits_bb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_unpack_k_bits_bb.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_descrambler_bb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_descrambler_bb.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_scrambler_bb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_scrambler_bb.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_probe_density_b.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_probe_density_b.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_annotator_alltoall.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_annotator_alltoall.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_annotator_1to1.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_annotator_1to1.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_burst_tagger.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_burst_tagger.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_correlate_access_code_tag_bb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/general/gr_correlate_access_code_tag_bb.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_source_b.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_source_s.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_source_i.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_source_f.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_source_c.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_sink_b.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_sink_s.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_sink_i.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_sink_f.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_sink_c.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_noise_source_s.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_noise_source_i.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_noise_source_f.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_noise_source_c.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sig_source_s.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sig_source_i.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sig_source_f.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sig_source_c.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_b.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_s.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_i.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_f.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_c.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_vb.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_vs.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_vi.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_vf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_vc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_ff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_cc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_sf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_const_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_const_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_cc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sub_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sub_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sub_ff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sub_cc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_divide_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_divide_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_divide_ff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_divide_cc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_mute_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_mute_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_mute_ff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_mute_cc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_vss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_vii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_vff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_vcc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_const_vss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_const_vii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_const_vff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_const_vcc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_integrate_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_integrate_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_integrate_ff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_integrate_cc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_moving_average_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_moving_average_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_moving_average_ff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_moving_average_cc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_chunks_to_symbols_bf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_chunks_to_symbols_bc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_chunks_to_symbols_sf.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_chunks_to_symbols_sc.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_chunks_to_symbols_if.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_chunks_to_symbols_ic.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_unpacked_to_packed_bb.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_unpacked_to_packed_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_unpacked_to_packed_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_packed_to_unpacked_bb.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_packed_to_unpacked_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_packed_to_unpacked_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_xor_bb.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_xor_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_xor_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_and_bb.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_and_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_and_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_and_const_bb.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_and_const_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_and_const_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_or_bb.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_or_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_or_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_not_bb.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_not_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_not_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sample_and_hold_bb.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sample_and_hold_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sample_and_hold_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sample_and_hold_ff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_argmax_fs.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_argmax_is.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_argmax_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_max_ff.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_max_ii.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_max_ss.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_peak_detector_fb.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_peak_detector_ib.h"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_peak_detector_sb.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/gengen/gr_endianness.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/gengen/gr_noise_type.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/gengen/gr_sig_source_waveform.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_source_b.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_source_s.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_source_i.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_source_f.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_source_c.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_sink_b.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_sink_s.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_sink_i.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_sink_f.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_vector_sink_c.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_noise_source_s.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_noise_source_i.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_noise_source_f.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_noise_source_c.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sig_source_s.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sig_source_i.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sig_source_f.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sig_source_c.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_b.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_s.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_i.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_f.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_c.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_vb.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_vs.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_vi.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_vf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_probe_signal_vc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_ff.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_cc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_sf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_const_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_const_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_cc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sub_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sub_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sub_ff.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sub_cc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_divide_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_divide_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_divide_ff.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_divide_cc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_mute_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_mute_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_mute_ff.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_mute_cc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_vss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_vii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_vff.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_add_const_vcc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_const_vss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_const_vii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_const_vff.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_multiply_const_vcc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_integrate_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_integrate_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_integrate_ff.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_integrate_cc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_moving_average_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_moving_average_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_moving_average_ff.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_moving_average_cc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_chunks_to_symbols_bf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_chunks_to_symbols_bc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_chunks_to_symbols_sf.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_chunks_to_symbols_sc.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_chunks_to_symbols_if.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_chunks_to_symbols_ic.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_unpacked_to_packed_bb.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_unpacked_to_packed_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_unpacked_to_packed_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_packed_to_unpacked_bb.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_packed_to_unpacked_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_packed_to_unpacked_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_xor_bb.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_xor_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_xor_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_and_bb.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_and_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_and_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_and_const_bb.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_and_const_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_and_const_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_or_bb.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_or_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_or_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_not_bb.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_not_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_not_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sample_and_hold_bb.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sample_and_hold_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sample_and_hold_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_sample_and_hold_ff.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_argmax_fs.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_argmax_is.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_argmax_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_max_ff.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_max_ii.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_max_ss.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_peak_detector_fb.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_peak_detector_ib.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gr_peak_detector_sb.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/gengen/gr_endianness.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/gengen/gengen.i"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gengen/gengen_generated.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/reed-solomon/rs.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_histo_sink_f.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_oscope_guts.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_oscope_sink_f.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_oscope_sink_x.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_trigger_mode.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/i2c.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/i2c_bitbang.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/i2c_bbio.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/i2c_bbio_pp.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/microtune_4702.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/microtune_4937.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/microtune_eval_board_defs.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/microtune_xxxx.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/ppio_ppdev.h"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gri_wavfile.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/io.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_histo_sink.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_oscope_sink.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_file_sink.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_file_sink.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_file_sink_base.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_file_sink_base.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_file_source.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_file_source.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_file_descriptor_sink.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_file_descriptor_sink.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_file_descriptor_source.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_file_descriptor_source.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_message_sink.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_message_sink.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_message_source.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_message_source.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/microtune_xxxx_eval_board.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/microtune_xxxx_eval_board.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/microtune_4702_eval_board.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/microtune_4702_eval_board.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/microtune_4937_eval_board.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/microtune_4937_eval_board.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/ppio.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/ppio.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/sdr_1000.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/sdr_1000.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_udp_sink.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_udp_sink.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_udp_source.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_udp_source.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_wavfile_source.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_wavfile_source.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_wavfile_sink.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_wavfile_sink.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_tagged_file_sink.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/io/gr_tagged_file_sink.i")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio" TYPE FILE FILES "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/hier/gr_channel_model.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gnuradio/swig" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/hier/hier.i"
    "/home/alexzh/gr_alex/gnuradio/gnuradio-core/src/lib/hier/gr_channel_model.i"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_swig")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_runtime")
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgnuradio-core-3.6.1git.so.0.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgnuradio-core-3.6.1git.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/libgnuradio-core-3.6.1git.so.0.0.0"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/libgnuradio-core-3.6.1git.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgnuradio-core-3.6.1git.so.0.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgnuradio-core-3.6.1git.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_REMOVE
           FILE "${file}")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_runtime")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_runtime")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/libgnuradio-core.so"
    "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/libgnuradio-core-3.6.1git.so.0"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_runtime")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_runtime")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/gnuradio-config-info" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/gnuradio-config-info")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/gnuradio-config-info"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/alexzh/gr_alex/gnuradio/build/gnuradio-core/src/lib/gnuradio-config-info")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/gnuradio-config-info" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/gnuradio-config-info")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/gnuradio-config-info")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/gnuradio-config-info")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "core_runtime")

