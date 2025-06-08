# Install script for directory: /home/tzwang/GMT-main

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/tzwang/GMT-main/include/bafs_ptr.h"
    "/home/tzwang/GMT-main/include/buffer.h"
    "/home/tzwang/GMT-main/include/ctrl.h"
    "/home/tzwang/GMT-main/include/event.h"
    "/home/tzwang/GMT-main/include/helper.h"
    "/home/tzwang/GMT-main/include/host_cache.h"
    "/home/tzwang/GMT-main/include/host_ring_buffer.h"
    "/home/tzwang/GMT-main/include/host_util.h"
    "/home/tzwang/GMT-main/include/linear_regression.h"
    "/home/tzwang/GMT-main/include/nvm_admin.h"
    "/home/tzwang/GMT-main/include/nvm_aq.h"
    "/home/tzwang/GMT-main/include/nvm_cmd.h"
    "/home/tzwang/GMT-main/include/nvm_ctrl.h"
    "/home/tzwang/GMT-main/include/nvm_dma.h"
    "/home/tzwang/GMT-main/include/nvm_error.h"
    "/home/tzwang/GMT-main/include/nvm_io.h"
    "/home/tzwang/GMT-main/include/nvm_parallel_queue.h"
    "/home/tzwang/GMT-main/include/nvm_perf.h"
    "/home/tzwang/GMT-main/include/nvm_queue.h"
    "/home/tzwang/GMT-main/include/nvm_rpc.h"
    "/home/tzwang/GMT-main/include/nvm_types.h"
    "/home/tzwang/GMT-main/include/nvm_util.h"
    "/home/tzwang/GMT-main/include/page_cache.h"
    "/home/tzwang/GMT-main/include/queue.h"
    "/home/tzwang/GMT-main/include/util.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libnvm.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libnvm.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libnvm.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/tzwang/GMT-main/cmake-build-debug-gmt/lib/libnvm.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libnvm.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libnvm.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libnvm.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/tzwang/GMT-main/cmake-build-debug-gmt/benchmarks/multivectoradd/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/tzwang/GMT-main/cmake-build-debug-gmt/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
