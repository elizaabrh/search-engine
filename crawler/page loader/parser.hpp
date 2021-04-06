#ifndef PARSER_HPP
#define PARSER_HPP

#include <gumbo.h>

#include <vector>
#include <string>



class Parser {
private:
    std::vector<std::string> links; // class-i field
    std::string texts;
    std::string title;
    std::string description;

    std::string html;
    std::string ogurl;

public:
    Parser(std::string html, std::string ogurl);

    void parse(); // const chenq grum , vor karana field-ery poxi
    // gets
    std::string getText() const;
    std::string getDescription() const;

private: 
    std::string parseDescription(GumboNode* node);
};











#endif
