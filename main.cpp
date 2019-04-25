#include <iostream>
#include "parse.h"

using namespace std;

int main(int argv, char** argc){
	if(argv != 2){
		std::cerr << "No filename specified" << std::endl;
		exit(-1);
	}

	std::string filename(argc[1]);


	return 0;
}