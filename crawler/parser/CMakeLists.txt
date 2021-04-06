file(GLOB SOURCE LIST_DIRECTORIES false *.hpp *.cpp)

add_library(parser STATIC ${SOURCE})

TARGET_LINK_LIBRARIES(parser -lgumbo)

