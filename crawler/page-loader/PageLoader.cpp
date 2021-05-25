#include "PageLoader.hpp"


LoadResult PageLoader::load(const string& url)
{
   curlpp::Easy request;
   curlpp::Cleanup cleaner;

   request.setOpt(curlpp::Options::Url(url));
   request.setOpt(curlpp::Options::FollowLocation(true));
   
   std::ostringstream out;
   curlpp::options::WriteStream ws(&out);
   request.setOpt(ws);  // asum a , vor out-i mej gri
   request.perform(); // writes all data into "out" stream

   std::string effUrl;
   curlpp::infos::EffectiveUrl::get(request, effUrl);
   return LoadResult(out.str(), effUrl, curlpp::infos::ResponseCode::get(request));

}




