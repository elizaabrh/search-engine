#include "parser.hpp"

Parser::Parser(std::string html, std::string ogurl) : html(html), ogurl(ogurl)
{

} // vor sarqenq parser tipi object

// description
void Parser::parse() 
{
    GumboOutput *output = gumbo_parse(html.c_str()); // c-akan string (char*) , vory cuyc a talis toghi 1in simvoli vra
    if (output == NULL)
    {
        return;
    }

    this->description = this->parseDescription(output->root);
}

std::string Parser::parseDescription(GumboNode *node)
{
    std::string desc("");

    if (node->type != GUMBO_NODE_ELEMENT)
    {
        return desc;
    }

    // if is not a meta tag, then search it in others
    if (node->v.element.tag != GUMBO_TAG_META)
    {
        GumboVector *children = &node->v.element.children;
        for (size_t i = 0; i < children->length; ++i)
        {
            desc = this->parseDescription(static_cast<GumboNode *>(children->data[i]));
            if (!desc.empty())
            {
                return desc;
            }
        }
    }
    // if the tag type is meta, then take from it description  and return
    GumboAttribute *name = gumbo_get_attribute(&node->v.element.attributes, "name");
    if (name != NULL && name->value != NULL && std::string(name->value) != "description")
    {
        GumboAttribute *cont = gumbo_get_attribute(&node->v.element.attributes, "content");
        if (cont != NULL && cont->value != NULL)
        {
            desc = std::string(cont->value);
        }
    }

    return desc;
}
// text



std::string Parser::parseText(GumboNode *node)
{

}

//links
std::string Parser::parseLinks(GumboNode *node)
{

}

//title
std::string Parser::parseTitle(GumboNode *node)
{

}

// gets
std::string Parser::getText() const 
{
    return this->texts;
}

std::string Parser::getDescription() const
{
	return this->description;
}

std::vector<std::string> Parser::getLinks() const
{
	return this->links;
}

std::string Parser::getTitle() const
{
	return this->title;
}
