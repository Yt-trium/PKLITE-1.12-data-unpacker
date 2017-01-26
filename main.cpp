#include <iostream>
#include "pklite.h"

int main(int argc, char **argv)
{
	int return_value = 0;
	std::cout << "PKLITE 1.12 DATA UNPACKER" << std::endl;
	
	if(argc == 2)
	{
		std::string filename = argv[1];
		return_value = pklite_du(filename);
	}
	else
		std::cout << "Error : Number of argument invalid" << std::endl;

	return return_value;
}
