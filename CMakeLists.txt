cmake_minimum_required(VERSION 3.20)

set(APP_NAME app_example)

project(exemplo_raylib C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(raylib REQUIRED)

add_executable(${APP_NAME} main.c)

target_link_libraries(
    ${APP_NAME}
    PRIVATE
    raylib
)

#include(cmake/run.cmake)

