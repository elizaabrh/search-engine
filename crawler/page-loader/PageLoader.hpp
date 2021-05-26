#ifndef PAGE_LOADER_HPP     //if not defined
#define PAGE_LOADER_HPP     // guarantees that the file is connected only once

#include <iostream>
#include <string>
#include <sstream>

#include <curlpp/cURLpp.hpp>
#include <curlpp/Easy.hpp>
#include <curlpp/Options.hpp>
#include <curlpp/Infos.hpp>
#include <curl/curl.h>

#include "LoadResult.hpp"
       using namespace std;
       class PageLoader
       {
       public:
         LoadResult load(const string &url);                
};
#endif
