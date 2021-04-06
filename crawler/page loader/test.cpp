#include <iostream>
#include "PageLoader.hpp"
#include "../parser/parser.hpp"

int main()
{
    PageLoader x;

    LoadResult y = x.load(std::string("https://www.amazon.com/"));
    std::cout << y.getBody() << std::endl << y.getStatus() << std::endl;
    

    Parser parser(y.getBody(), "https://www.amazon.com/");

    parser.parse();

    std::cout << parser.getDescription() << std::endl;s
}




