#!/bin/sh
cmake -B ./build/win/ --toolchain ./toolchains/win64-toolchain.cmake
cmake --build ./build/win/
