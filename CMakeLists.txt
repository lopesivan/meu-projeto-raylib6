cmake_minimum_required(VERSION 3.20)
project(exemplo_raylib CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(raylib REQUIRED)

add_executable(app_example main.cpp)

target_link_libraries(
    app_example
    PRIVATE
    raylib
)
