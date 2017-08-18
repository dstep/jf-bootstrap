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

	char* s = malloc(leftSize + rightSize);
	memcpy(s, left, leftSize);
	memcpy(s + leftSize, right, rightSize);
	return s;
}

jf_i32 jf_compare_strings(jf_string left, jf_string right){
	return strcmp(left, right);
}

jf_string IntToStr(jf_i32 x){
	char buf[90];
	return jf_make_string(_itoa(x, buf, 10));
}

jf_i32 StrToInt(jf_string s) {
	return atoi(s);
}

void Trace(jf_string message){
	printf("Trace: %s\n", message);
}

jf_string ReadLn(jf_string message) {
	char s[80];
	printf("%s", message);
	fgets(s, 79, stdin);
	return jf_make_string(s);
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