cmake_minimum_required(VERSION 3.2)
project(imgui-sfml VERSION 1.53) # ImGui version

set(CMAKE_CXX_STANDARD 11)
set(CXX_STANDARD_REQUIRED ON)

set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)
set(CMAKE_DISABLE_SOURCE_CHANGES  ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS OFF)

if ("${CMAKE_SOURCE_DIR}" STREQUAL "${CMAKE_BINARY_DIR}")
  message(SEND_ERROR "In-source builds are not allowed.")
endif ()

set(CMAKE_VERBOSE_MAKEFILE OFF)
set(CMAKE_COLOR_MAKEFILE ON)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${PROJECT_SOURCE_DIR}/cmake")

file(GLOB IMGUI_SFML_SOURCES "${PROJECT_SOURCE_DIR}/*.cpp" "${PROJECT_SOURCE_DIR}/*.h")

set(${SFML_INCLUDE_DIR}, "../SFML/include/")

include_directories(
  ${PROJECT_SOURCE_DIR}
  ${SFML_INCLUDE_DIR}
)

set(IMGUI_SFML_INCLUDES ${PROJECT_SOURCE_DIR})
list(APPEND IMGUI_SFML_INCLUDES ${SFML_INCLUDE_DIR})
set(IMGUI_SFML_INCLUDE_DIRS ${IMGUI_SFML_INCLUDES}
    CACHE INTERNAL "IMGUI_SFML_INCLUDE_DIRS")

message(STATUS "imgui-sfml include directories: ${IMGUI_SFML_INCLUDE_DIRS}")

if(MAKE_SHARED_LIB)
  add_library(${PROJECT_NAME} SHARED ${IMGUI_SFML_SOURCES})
else()
  add_library(${PROJECT_NAME} STATIC ${IMGUI_SFML_SOURCES})
endif()

target_link_libraries(${PROJECT_NAME}
  ${OPENGL_LIBRARIES}
  sfml-network sfml-graphics sfml-window sfml-system sfml-audio
)
