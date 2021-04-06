#include "PageLoader.hpp"


LoadResult PageLoader::load(const string& url) //my realizuem 
                    //funkciyu load iz klassa PageLoader
{
   curlpp::Easy request; //
   curlpp::Cleanup cleaner; // will clean up when destructor has been called

   request.setOpt(curlpp::Options::Url(url));
   request.setOpt(curlpp::Options::FollowLocation(true));
   
   std::ostringstream out;
   curlpp::options::WriteStream ws(&out);
   request.setOpt(ws);  //asum a , vor out-i mej gri

   request.perform(); // will write all data into "out" stream


   // add also an effective url for the loadResult
   
   return LoadResult(out.str(), curlpp::infos::ResponseCode::get(request));

}




