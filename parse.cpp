#include "parse.h"
#include <fstream>

Parser::Parser(std::string filename){
	this->filename = filename;
}

Parser::~Parser(){
	//Nothing here for now...
}

void Parser::ParseFile(){
	//Start actual token parsing....

	string line;
  	ifstream myfile (filename);
  	if (myfile.is_open())
  	{
    	while ( getline (myfile,line) )
    	{
      		cout << line << '\n';
    	}
    	myfile.close();
  	}
}