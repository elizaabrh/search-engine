#include "LoadResult.hpp"

LoadResult::LoadResult(const string &body, std::string ogUrl, int status)
						: body(body), ogurl(ogUrl), status(status)
{
    
}

string LoadResult::getBody() const
{
    return this->body;
}

int LoadResult::getStatus() const
{
    return this->status;
}

string LoadResult::getOgurl() const
{
	return this->ogurl;
}

