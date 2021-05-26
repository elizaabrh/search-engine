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

   std::string ogUrl;
   curlpp::infos::EffectiveUrl::get(request, ogUrl);
   return LoadResult(out.str(), ogUrl, curlpp::infos::ResponseCode::get(request));

}




