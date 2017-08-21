#include <jellyfish.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "dirent.h"

jf_i32 jfprelude_LoadByte(jf_pointer ptr, jf_i32 offset){
	return ((unsigned char*)ptr)[offset];
}

jf_string jfprelude_LoadString(jf_pointer ptr, jf_i32 offset, jf_i32 size) {
	char* s = malloc(size + 1);
	memcpy(s, ((const char*)ptr) + offset, size);
	s[size] = 0;
	return jf_make_string(s);
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

typedef struct {
	jf_tag _unused;	
	jf_string* files;	
	jf_i32 count;
} jf_DirectoryData;

jf_DirectoryData* jfprelude_ReadDirectory(jf_string path){
	jf_DirectoryData* data = malloc(sizeof(jf_DirectoryData));
	data->count = 0;
	data->files = malloc(sizeof(jf_string) * 256);

	DIR *dir;
	struct dirent *ent;
	if ((dir = opendir(path)) != NULL) {
		while ((ent = readdir(dir)) != NULL) {
			data->files[data->count] = _strdup(ent->d_name);
			data->count++;
		}
		closedir(dir);
	}

	return data;
}

void jfprelude_Write(jf_string message) {
	printf("%s", message);
}

jf_string jfprelude_ReadLn(jf_string message) {
	char s[80];
	printf("%s", message);
	fgets(s, 79, stdin);
	return jf_make_string(s);
}

jf_string jfprelude_Substring(jf_string str, jf_i32 from, jf_i32 length){
	return jfprelude_LoadString(str, from , length);
}

jf_string jfprelude_IntToStr(jf_i32 x) {
	char buf[90];
	return jf_make_string(_itoa(x, buf, 10));
}

jf_i32 jfprelude_StrToInt(jf_string s) {
	return atoi(s);
}

jf_i32 jfprelude_CharAt(jf_string s, jf_i32 i) {
	return s[i];
}

jf_i32 jfprelude_StringLength(jf_string s) {
	return (jf_i32)strlen(s);
}

void jfprelude_Exit(jf_i32 code){
	system("pause");
	exit(code);
}
