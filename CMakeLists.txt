cmake_minimum_required(VERSION 3.10)
project(calculator_project)

set(CMAKE_CXX_STANDARD 11)

add_library(calculator STATIC calculator1.cpp)

add_executable(main calculator2.cpp)
target_link_libraries(main calculator)