#include <stdio.h>
#include "header/rpi_server.h"
#include "header/camera_node.h"

int main(){

	rpi_server_hello(); // 헬로 
	camera_node_hello();

	return 0;
}
