#include <jellyfish.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

jf_string jf_make_string(const char* lit){
	jf_string s = malloc(sizeof(jf_string));
	s->size = strlen(lit);
	s->data = _strdup(lit);
	return s;
}

jf_string jf_string_concat(jf_string left, jf_string right){
	char* s = malloc(left->size + right->size);
	memcpy(s, left->data, left->size);
	memcpy(s + left->size, right->data, right->size);
	jf_string str = malloc(sizeof(jf_string));
	str->size = left->size + right->size;
	str->data = s;
	return str;
}

jf_string IntToStr(jf_i32 x){
	char buf[90];
	return jf_make_string(_itoa(x, buf, 10));
}

jf_i32 StrToInt(jf_string s) {
	return atoi(s->data);
}

void Trace(jf_string message){
	printf("Trace: %.*s\n", (int)message->size, message->data);
}

jf_string ReadLn(jf_string message) {
	char s[80];
	printf("%.*s", (int)message->size, message->data);
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