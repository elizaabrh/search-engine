#include "parser.hpp"

Parser::Parser(std::string html, std::string ogurl)
		:html(html), ogurl(ogurl)
{

}

void Parser::parse()
{
	// html
	GumboOutput* output = gumbo_parse(html.c_str()); // c-akan string (char*) , vory cuyc a talis toghi 1in simvoli vra
	if (output==NULL)
	{
		return;
	}

	// description
	this->description = this->parseDescription(output->root);

	// title
	this->title = this->parseTitle(output->root);

	// links
	this->parseLinks(output->root);

	// texts
	this->texts = this->parseText(output->root);


}

std::string Parser::parseDescription(GumboNode* node)
{
	std::string desc("");

	if (node->type!=GUMBO_NODE_ELEMENT) {
		return desc;
	}

	// if not a meta tag, then search in others
	if (node->v.element.tag!=GUMBO_TAG_META) {
		GumboVector* children = &node->v.element.children;
		for (size_t i = 0; i<children->length; ++i) {
			desc = this->parseDescription(static_cast<GumboNode*>(children->data[i]));
			if (!desc.empty()) {
				return desc;
			}
		}
	}
	// if the tag type is meta, then take from it description  and return
	GumboAttribute* name = gumbo_get_attribute(&node->v.element.attributes, "name");
	if (name!=NULL && name->value!=NULL && std::string(name->value)!="description") {
		GumboAttribute* cont = gumbo_get_attribute(&node->v.element.attributes, "content");
		if (cont!=NULL && cont->value!=NULL) {
			desc = std::string(cont->value);
		}
	}

	return desc;
}

// text
std::string Parser::parseText(GumboNode* node)
{
	if (node->type == GUMBO_NODE_TEXT) {
		return std::string(node->v.text.text);
	} else if (node->type == GUMBO_NODE_ELEMENT &&
			node->v.element.tag != GUMBO_TAG_SCRIPT &&
			node->v.element.tag != GUMBO_TAG_STYLE) {
		std::string contents = "";
		GumboVector* children = &node->v.element.children;
		for (unsigned int i = 0; i < children->length; ++i) {
			const std::string text = cleantext((GumboNode*) children->data[i]);
			if (i != 0 && !text.empty()) {
				contents.append(" ");
			}
			contents.append(text);
		}
		return contents;
	} else {
		return "";
	}
}

//links
void Parser::parseLinks(GumboNode* node)
{
	if (node->type != GUMBO_NODE_ELEMENT)
	{
		return;
	}
	GumboAttribute* href;
	if (node->v.element.tag == GUMBO_TAG_A &&
			(href = gumbo_get_attribute(&node->v.element.attributes, "href")))
	{
		links.push_back(ogurl + std::string(href->value));
	}

	GumboVector* children = &node->v.element.children;
	for (unsigned int i = 0; i < children->length; ++i)
	{
		search_for_links(static_cast<GumboNode*>(children->data[i]));
	}

}

//title
std::string Parser::parseTitle(GumboNode* node)
{
	assert(root->type==GUMBO_NODE_ELEMENT);
	assert(root->v.element.children.length>=2);

	const GumboVector* root_children = &root->v.element.children;
	GumboNode* head = NULL;
	for (int i = 0; i<root_children->length; ++i)
	{
		GumboNode* child = root_children->data[i];
		if (child->type==GUMBO_NODE_ELEMENT &&
				child->v.element.tag==GUMBO_TAG_HEAD)
		{
			head = child;
			break;
		}
	}
	assert(head!=NULL);

	GumboVector* head_children = &head->v.element.children;
	for (int i = 0; i<head_children->length; ++i) {
		GumboNode* child = head_children->data[i];
		if (child->type==GUMBO_NODE_ELEMENT &&
				child->v.element.tag==GUMBO_TAG_TITLE) {
			if (child->v.element.children.length!=1)
			{
				return "<empty title>";
			}
			GumboNode* title_text = child->v.element.children.data[0];
			assert(title_text->type==GUMBO_NODE_TEXT || title_text->type==GUMBO_NODE_WHITESPACE);
			return title_text->v.text.text;
		}
	}
	return "<no title found>";
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
