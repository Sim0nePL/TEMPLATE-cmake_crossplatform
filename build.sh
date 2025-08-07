#!/bin/sh
cmake -B ./build/linux/ --toolchain ./toolchains/linux-toolchain.cmake
cmake --build ./build/linux/
