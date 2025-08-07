cmake_minimum_required(VERSION 3.20) 
project(crossplatform_TEMPLATE
        LANGUAGES CXX
        VERSION 1.0.0
        DESCRIPTION "Template Project for cross-compilable c++ project")

# Basic Settings
set(CMAKE_SOURCE_DIR "${CMAKE_HOME_DIRECTORY}/src")
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

# Project Sources
file(GLOB_RECURSE SOURCES "${CMAKE_SOURCE_DIR}/*")

# Executables
add_executable("${PROJECT_NAME}_bin" ${SOURCES})
