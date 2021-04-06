CMAKE_MINIMUM_REQUIRED(VERSION 3.1)
PROJECT(crawler)

set(CMAKE_CXX_STANDARD 17)

add_subdirectory(page-loader)
add_subdirectory(parser)
add_subdirectory(project)
