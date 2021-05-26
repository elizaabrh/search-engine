#include "PageLoader.hpp"


LoadResult PageLoader::load(const string& url)
{
   curlpp::Easy request; // sends request to the given url
   curlpp::Cleanup cleaner; // cleans up after the destructor has been called

   request.setOpt(curlpp::Options::Url(url));
   request.setOpt(curlpp::Options::FollowLocation(true)); // finds the location
   
   std::ostringstream out; // saves in "out" stream
   curlpp::options::WriteStream ws(&out); // orders to write in "out"

   // changes the default write stream into "out"
   request.setOpt(ws);
   request.perform();

   std::string ogUrl;

   // writes found full (aka effective) url in "ogUrl"
   curlpp::infos::EffectiveUrl::get(request, ogUrl);

   return LoadResult(out.str(), ogUrl, curlpp::infos::ResponseCode::get(request));

}




