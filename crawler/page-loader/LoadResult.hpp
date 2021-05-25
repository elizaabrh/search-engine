#ifndef LOAD_RESULT_HPP
#define LOAD_RESULT_HPP
#include <iostream>
#include <string>

using namespace std;

class LoadResult
{
private:
    string body;
    int status;
    std::string ogurl;

public:
    LoadResult(const string& body, int status);
    string getBody() const;
    int getStatus() const;
    string getOgurl() const;
};

#endif
