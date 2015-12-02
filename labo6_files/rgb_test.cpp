#include <iostream>
#include "rgb_to_bw.h"

using namespace std;

int main(int argc, char **argv)
{
	unsigned char a,b;
	unsigned char hw_result;
	int sw_result;
	int hw_result_int;

	a=3;
	b=3;
	sw_result= (a + b + a) / 3;

#ifdef HW_COSIM
	hw_result=rgb_to_bw(a, b, a);
	hw_result_int = hw_result;
	cout << "Hardware result:" ;
	//cout << hw_result;
	cout << hw_result_int;
	cout << "\n";
#endif
	cout << "Ahora software: ";
	cout << sw_result;
	return 0;
}

