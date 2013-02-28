project(osg-windows)
cmake_minimum_required(VERSION 2.8)

include(ExternalProject)

if(CMAKE_SIZEOF_VOID_P EQUAL 4)
	add_subdirectory(bin32)
endif()

add_subdirectory(src)