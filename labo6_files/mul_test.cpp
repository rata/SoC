#include <iostream>
#include "mul.h"


using namespace std;

int main(int argc, char **argv)
{
     int err_cnt = 0;
	 char a,b;
	 int sw_result;
	 short hw_result;
	

a=2;
b=3;
sw_result= a*b;


#ifdef HW_COSIM
   // Run the AutoESL matrix multiply block
   hw_result=mul(a, b);
   cout << "Hardware result:" ;
   cout << hw_result;
   cout << "\n" ;
#endif
    //multiplica(a, b, hw_result);
   cout << "Ahora software: " ;
    cout << sw_result;
    return err_cnt;
}

