#include <jellyfish.h>
#include <stdio.h>
#include <stdlib.h>

jf_i32 jfprelude_ReadByte(jf_pointer ptr, jf_i32 offset){
	return ((unsigned char*)ptr)[offset];
}

typedef struct {
	jf_i32 success;
	jf_pointer data;
	jf_i32 size;
} jf_FileData;

jf_FileData* jfprelude_ReadFile(jf_string path){
	jf_FileData* data = malloc(sizeof(jf_FileData));
	data->success = 0;

	FILE* f = fopen(path, "rb");
	if ( !f ){
		return data;
	}

	fseek(f, 0, SEEK_END);
	data->size = ftell(f);
	fseek(f, 0, SEEK_SET);
	data->data = malloc(data->size);
	fread(data->data, data->size, 1, f);
	fclose(f);

	data->success = 1;

	return data;
}

void jfprelude_WriteLn(jf_string message) {
	printf("Trace: %s\n", message);
}

jf_string jfprelude_ReadLn(jf_string message) {
	char s[80];
	printf("%s", message);
	fgets(s, 79, stdin);
	return jf_make_string(s);
}


jf_string jfprelude_IntToStr(jf_i32 x) {
	char buf[90];
	return jf_make_string(_itoa(x, buf, 10));
}

jf_i32 jfprelude_StrToInt(jf_string s) {
	return atoi(s);
}

jf_i32 jfprelude_CharCode(jf_string s){
	return s[0];
}
