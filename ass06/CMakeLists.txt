cmake_minimum_required(VERSION 3.5)

project(Chicken)

set(SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp)

# 设置 rpath 参数
set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")

if(APPLE)
    set(CMAKE_INSTALL_RPATH "@executable_path/../lib")
elseif(UNIX)
    set(CMAKE_INSTALL_RPATH "$ORIGIN/../lib")
endif()

add_library(chicken_lib SHARED 
    ${CMAKE_CURRENT_SOURCE_DIR}/Chicken.h
    ${CMAKE_CURRENT_SOURCE_DIR}/Chicken.cpp   
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_executable(chicken ${SOURCES})
target_link_libraries(chicken chicken_lib)

install(TARGETS chicken DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install(TARGETS chicken_lib DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/Chicken.h DESTINATION ${CMAKE_INSTALL_PREFIX}/include)
