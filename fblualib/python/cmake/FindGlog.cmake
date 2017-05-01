#  Copyright (c) 2014, Facebook, Inc.
#  All rights reserved.
#
#  This source code is licensed under the BSD-style license found in the
#  LICENSE file in the root directory of this source tree. An additional grant
#  of patent rights can be found in the PATENTS file in the same directory.
#
# GLOG_FOUND
# GLOG_INCLUDE_DIR
# GLOG_LIBRARIES

CMAKE_MINIMUM_REQUIRED(VERSION 2.8.7 FATAL_ERROR)

INCLUDE(FindPackageHandleStandardArgs)
CMAKE_PREFIX_PATH='/gpu/homedirs/yz328/.linuxbrew/Cellar/glog/0.3.4_1/'
GLOG_INCLUDE_DIR='/gpu/homedirs/yz328/.linuxbrew/Cellar/glog/0.3.4_1/include/'
GLOG_LIBRARY='/gpu/homedirs/yz328/.linuxbrew/Cellar/glog/0.3.4_1/lib/'

FIND_LIBRARY(GLOG_LIBRARY glog HINTS "${CMAKE_PREFIX_PATH}/lib")
FIND_PATH(GLOG_INCLUDE_DIR "glog/logging.h" HINTS "${CMAKE_PREFIX_PATH}/glog/logging.h")

SET(GLOG_LIBRARIES ${GLOG_LIBRARY})

FIND_PACKAGE_HANDLE_STANDARD_ARGS(
  Glog
  REQUIRED_ARGS GLOG_INCLUDE_DIR GLOG_LIBRARY)
