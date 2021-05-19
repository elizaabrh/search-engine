#ifndef LOAD_RESULT_HPP
#define LOAD_RESULT_HPP
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
