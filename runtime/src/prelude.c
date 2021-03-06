#include <jellyfish.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "dirent.h"
#include <ShlObj.h>
#include <llvm-c/Core.h>


jf_string jf_make_string(const char* lit) {
	return _strdup(lit);
}

jf_string jf_string_concat(jf_string left, jf_string right) {
	size_t leftSize = strlen(left);
	size_t rightSize = strlen(right);

	char* s = malloc(leftSize + rightSize + 1);
	memcpy(s, left, leftSize);
	memcpy(s + leftSize, right, rightSize);
	s[leftSize + rightSize] = 0;
	return s;
}

jf_i32 jf_string_compare(jf_string left, jf_string right) {
	return strcmp(left, right);
}

jf_i32 jf_compare_strings(jf_string left, jf_string right) {
	return strcmp(left, right);
}

void* _jf_allocate(size_t size) {
	return malloc(size);
}

void* (jf_allocate)(size_t size) {
	return malloc(size);
}

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

void jfprelude_RemoveFile(jf_string path){
	_unlink(path);
}

void jfprelude_WriteFile(jf_string path, jf_string data){
	FILE* f = fopen(path, "wb");
	if ( !f ){
		return;
	}

	fwrite(data, strlen(data), 1, f);

	fclose(f);
}

typedef struct {
	jf_tag success;	
	jf_string* files;	
	jf_i32 count;
} jf_DirectoryData;

jf_DirectoryData* jfprelude_ReadDirectory(jf_string path){
	jf_DirectoryData* data = malloc(sizeof(jf_DirectoryData));
	data->count = 0;
	data->files = malloc(sizeof(jf_string) * 256);
	data->success = 0;

	DIR *dir;
	struct dirent *ent;
	if ((dir = opendir(path)) != NULL) {
		while ((ent = readdir(dir)) != NULL) {
			if ( ent->d_name[0] != '.' ){
				data->files[data->count] = _strdup(ent->d_name);
				data->count++;
			}
		}
		data->success = 1;
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
	return jfprelude_LoadString((void*)str, from , length);
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

jf_string jfprelude_DecodeStr(jf_string s){
	size_t n = strlen(s);
	char* buffer = malloc(n + 1);
	char* out = buffer;
	for ( size_t i = 1; i < n - 1; i++ ){
		if ( s[i] == '\\' ){
			i++;
			switch ( s[i] ){
			case '0': {
				*out = '\0';
				out++;
			}break;
			case 'n': {
				*out = '\n';
				out++;
			}break;
			case 't': {
				*out = '\t';
				out++;
			}break;
			case 'r': {
				*out = '\r';
				out++;
			}break;
			default:{
				*out = s[i];
				out++;
			}break;
			}
		}else{
			*out = s[i];
			out++;
		}
	}
	*out = 0;
	jf_string ret = jf_make_string(buffer);
	free(buffer);
	return ret;
}

jf_pointer jfprelude_Null(){
	return NULL;
}

jf_pointer LLVMConstInt_wrap(jf_pointer type, jf_i32 n, jf_bool signExtended){
	return LLVMConstInt(type, n, signExtended);
}

LLVMMetadataRef LLVMDICreateCompileUnit_wrapper(LLVMDIBuilderRef Builder, unsigned Lang, LLVMMetadataRef File, const char* Producer, LLVMBool IsOptimized, const char* Flags, unsigned RV, const char* SplitName, LLVMDebugEmissionKind Kind, jf_i32 DWOId, LLVMBool SplitDebugInlining, LLVMBool DebugInfoForProfiling){
	return LLVMDICreateCompileUnit(Builder, Lang, File, Producer, IsOptimized, Flags, RV, SplitName, Kind, DWOId, SplitDebugInlining, DebugInfoForProfiling);
}

jf_i32 jfprelude_LLVMPrivateLinkage(){
	return LLVMPrivateLinkage;
}

jf_bool jfprelude_IsDirectory(jf_string path){
	DIR* dir = opendir(path);
	if ( !dir ){
		return jf_false;
	}

	closedir(dir);
	return jf_true;
}

void jfprelude_RemoveDirectory(jf_string path) {
	_unlink(path);
}

void jfprelude_CreateDirectory(jf_string path, jf_bool recursive){
	CreateDirectoryA(path, 0);
}

typedef struct {
	jf_tag _unused;
	jf_string* args;
	jf_i32 count;
} jf_CommandLine;

extern int argc;
extern const char** argv;

jf_CommandLine* jfprelude_GetCommandLine() {
	jf_CommandLine* data = malloc(sizeof(jf_CommandLine));
	data->count = argc;
	data->args = argv;
	return data;
}

jf_u64 jfprelude_I32ToU64(jf_i32 x){
	return x;
}

jf_i64 jfprelude_I32ToI64(jf_i32 x){
	return x;
}