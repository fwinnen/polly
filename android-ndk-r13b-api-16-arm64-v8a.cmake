# Copyright (c) 2015, Ruslan Baratov
# Copyright (c) 2015, Ruslan Baratov
# Copyright (c) 2015, David Hirvonen
# Copyright (c) 2015, Alexandre Pretyman
# All rights reserved.

if(DEFINED POLLY_ANDROID_NDK_R13B_API_16_ARM64_V8A_CMAKE_)
  return()
else()
  set(POLLY_ANDROID_NDK_R13B_API_16_ARM64_V8A_CMAKE_ 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_clear_environment_variables.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

set(ANDROID_NDK_VERSION "r13b")
set(CMAKE_SYSTEM_VERSION "16")
set(CMAKE_ANDROID_ARCH_ABI "arm64-v8a")
set(CMAKE_ANDROID_STL_TYPE "c++_static")
set(CMAKE_ANDROID_NDK_TOOLCHAIN_VERSION "clang")

polly_init(
    "Android NDK ${ANDROID_NDK_VERSION} / \
API ${CMAKE_SYSTEM_VERSION} / ${CMAKE_ANDROID_ARCH_ABI} / c++11 support"
    "Unix Makefiles"
)

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/flags/cxx11.cmake") # before toolchain!

include("${CMAKE_CURRENT_LIST_DIR}/os/android.cmake")