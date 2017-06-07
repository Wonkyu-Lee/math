cmake_minimum_required(VERSION 3.7)
project(math)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp)
add_executable(math ${SOURCE_FILES})

set(MATH_PLATFORM macOS)
set(MATH_DEP_EIGEN ON)
include(cmake/dependencies.cmake)
add_dependencies(math ${MATH_DEPENDENCIES})