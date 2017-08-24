#include <jellyfish.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

jf_unit _jf_entry_point();

int argc;
const char** argv;

int main(int _argc, const char** _argv){
	argc = _argc;
	argv = _argv;
	_jf_entry_point();
}