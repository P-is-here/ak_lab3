cmake_minimum_required(VERSION 3.22.1)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(func VERSION 1.0)

#set(source_exe main.c)
#set(source_lib func.c)

add_library(func_lib STATIC ${SOURCE_LIB} func.c)
add_executable(func_exe main.c ${SOURCE_EXE})

target_link_libraries(func_exe func_lib)


