#!/bin/bash

ABI=armeabi-v7a
# ABI=x86
# ABI=arm64-v8a
#ABI=x86_64

ANDROID_NDK=$HOME/Library/Android/sdk/ndk/22.0.7026061
TOOL_CHAIN=${ANDROID_NDK}/build/cmake/android.toolchain.cmake
CMAKE=$HOME/../../usr/local/Cellar/cmake/3.19.5/bin/cmake

mkdir -p ${ABI}
cd ${ABI}

${CMAKE} ../../spdlog -DCMAKE_SYSTEM_NAME=Android -DCMAKE_SYSTEM_VERSION=21 \
-DANDROID_ABI=${ABI} -DCMAKE_TOOLCHAIN_FILE=${TOOL_CHAIN} -DCMAKE_CXX_FLAGS=-DSPDLOG_COMPILED_LIBS

${CMAKE} —-build .