#ifndef PAGE_LOADER_HPP     //if not defined
#define PAGE_LOADER_HPP     //yete ifndef define endif chanenq,
       //to 2 angam include aneluc 2 angam a code-y copy linelu
    //eto dlya togo , chtoby file podklyuchilsya tolko odin raz, 
//garantia  a

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



