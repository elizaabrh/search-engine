#include <iostream>
#include "PageLoader.hpp"
#include "parser.hpp"

int main()
{
    PageLoader x;

    LoadResult y = x.load(std::string("bbc.com"));
    //std::cout << y.getBody() << std::endl << y.getStatus() << std::endl;


    Parser parser(y.getBody(), "bbc.com");

    parser.parse();

    std::cout << parser.getDescription() << std::endl;

}




