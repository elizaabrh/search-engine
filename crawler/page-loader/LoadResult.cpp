#include "LoadResult.hpp"

LoadResult::LoadResult(const string &body, int status) : body(body), status(status)
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

