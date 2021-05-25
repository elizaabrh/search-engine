ADD_EXECUTABLE(crawler main.cpp)

TARGET_LINK_LIBRARIES(crawler page_loader parser)

include_directories(../page-loader ../parser)

