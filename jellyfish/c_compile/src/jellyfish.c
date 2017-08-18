#include <jellyfish.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

jf_string jf_make_string(const char* lit){
	return _strdup(lit);
}

jf_string jf_string_concat(jf_string left, jf_string right){
	size_t leftSize = strlen(left);
	size_t rightSize = strlen(right);

	char* s = malloc(leftSize + rightSize + 1);
	memcpy(s, left, leftSize);
	memcpy(s + leftSize, right, rightSize);
	s[leftSize + rightSize] = 0;
	return s;
}

jf_i32 jf_compare_strings(jf_string left, jf_string right){
	return strcmp(left, right);
}


jf_unit main_main_run();

void* _jf_allocate(size_t size){
	return malloc(size);
}

#include <Windows.h>

int main(){
	main_main_run();

	if ( IsDebuggerPresent() ){
		system("pause");
	}
}