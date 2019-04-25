#ifndef __parseh__
#define __parseh__

#include <iostream>

class Parser{
	Parser(std::string);
	~Parser();
public:
	void ParseFile();

private:
	std::string filename;
};

#endif