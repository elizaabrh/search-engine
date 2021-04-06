file(GLOB SOURCE LIST_DIRECTORIES false *.hpp *.cpp)

add_library(page_loader STATIC ${SOURCE})

TARGET_LINK_LIBRARIES(page_loader -lcurl -lcurlpp)

