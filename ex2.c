#include <stdio.h>

/*
nasm -o <o_name>.o -g -f elf64 <your_file>.nasm
gcc -o <c_name>.o -c <your_file>.c 
gcc -o <output_name> <c_name>.o <o_name>.o   
*/

extern int addition(char a, char b);


int main(int argc, char** arrgv){
	char x = 10;
	char y = 4;
	char z = addition(x,y);
	printf("%d\n",z);
	return 0;
}
