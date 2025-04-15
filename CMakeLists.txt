cmake_minimum_required(VERSION 3.28.3)
set(PROJECT_VERSION_MAJOR 0)
set(PROJECT_VERSION_MINOR 0)
set(PROJECT_VERSION_PATCH 1)
project(r_http VERSION ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH})

include(r_build.txt)
include(FetchContent)

FetchContent_Declare(
    r_utils
    GIT_REPOSITORY https://github.com/dicroce/r_utils.git
    GIT_TAG        main
    FIND_PACKAGE_ARGS NAMES r_utils
)
FetchContent_MakeAvailable(r_utils)

add_library(
    r_http
    include/r_http/r_client_request.h
    source/r_client_request.cpp
    include/r_http/r_client_response.h
    source/r_client_response.cpp
    include/r_http/r_http_exception.h
    source/r_http_exception.cpp
    include/r_http/r_methods.h
    source/r_methods.cpp
    include/r_http/r_range_request_generator.h
    source/r_range_request_generator.cpp
    include/r_http/r_server_request.h
    source/r_server_request.cpp
    include/r_http/r_server_response.h
    source/r_server_response.cpp
    include/r_http/r_uri.h
    source/r_uri.cpp
    include/r_http/r_utils.h
    source/r_utils.cpp
    include/r_http/r_web_server.h
    source/r_web_server.cpp
)

target_include_directories(
    r_http PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

target_link_libraries(
    r_http 
    r_utils
)

add_subdirectory(ut)

if(PROJECT_IS_TOP_LEVEL)
configure_dev_package("r_http" "A C++ http library for making clients and servers.")
endif()
