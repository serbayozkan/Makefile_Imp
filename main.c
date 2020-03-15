#include <stdio.h>
#include "test1.h"
#include "test2.h"

int main(void)
{
	printf("Main Program is called\n");
	test1_func();
	test2_func();
	return 0;
}
