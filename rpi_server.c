#include <stdio.h>
#include "rpi_server.h"

void rpi_server_hello(){
	printf("rpi_server hello!");
}

int main(){

	rpi_server_hello(); // 헬로 

	return 0;
}
