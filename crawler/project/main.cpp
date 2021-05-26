#include <iostream>
#include "PageLoader.hpp"
#include "parser.hpp"

int main()
{
    PageLoader x;

    LoadResult y = x.load(std::string("https://rau.am/"));
    //std::cout << y.getBody() << std::endl << y.getStatus() << std::endl;

    Parser parser(y.getBody(), "https://rau.am/");

    parser.parse();

    std::cout << parser.getDescription() << std::endl;
	std::cout << parser.getTitle() << std::endl;
    for(auto &current: parser.getLinks())
    {
	    std::cout << current << std::endl;
    }
    std::cout << parser.getText() << std::endl;

}

