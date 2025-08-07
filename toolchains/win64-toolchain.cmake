set(CMAKE_SYSTEM_NAME Windows)

# Path to your llvm-mingw installation
set(LLVM_MINGW "/opt/llvm-mingw/llvm-mingw-20250709-ucrt-ubuntu-22.04-x86_64/")

# Compiler paths
set(CMAKE_C_COMPILER "${LLVM_MINGW}/bin/x86_64-w64-mingw32-clang")
set(CMAKE_CXX_COMPILER "${LLVM_MINGW}/bin/x86_64-w64-mingw32-clang++")

# Use lld for linking
set(CMAKE_C_FLAGS_INIT   "-fuse-ld=lld")
set(CMAKE_CXX_FLAGS_INIT "-fuse-ld=lld")

# Optional: For resource and static library tools
set(CMAKE_RC_COMPILER  "${LLVM_MINGW}/bin/llvm-rc")
set(CMAKE_AR           "${LLVM_MINGW}/bin/llvm-ar")
set(CMAKE_RANLIB       "${LLVM_MINGW}/bin/llvm-ranlib")

# Root path for Windows libraries/headers
set(CMAKE_FIND_ROOT_PATH "${LLVM_MINGW}/x86_64-w64-mingw32")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# Staticly link libc++
set(CMAKE_EXE_LINKER_FLAGS_INIT "-static -lc++ -lc++abi -lunwind")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_HOME_DIRECTORY}/bin/win")
