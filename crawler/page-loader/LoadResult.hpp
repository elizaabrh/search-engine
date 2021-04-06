#ifndef LOAD_RESULT_HPP   //if not defined
#define LOAD_RESULT_HPP   //yete ifndef define endif chanenq,
                      //to 2 angam include aneluc 2 angam a code-y copy linelu
//eto dlya togo , chtoby file podklyuchilsya tolko odin raz, garantia  a
#include <iostream>
#include <string>

using namespace std;

class LoadResult
{
private:
    //stores the response body
    string body;
    //stores the response status
    int status;
    std::string ogurl;


public:           
    //constructor
    LoadResult(const string& body, int status);
    string getBody() const;
    int getStatus() const;
    string getOgurl() const;
    
};

#endif
