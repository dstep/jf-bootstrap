#include <stddef.h>
#include <stdint.h>

typedef struct {
	size_t size;
	char* data;
} jf_string_t;

typedef int32_t jf_i32;
typedef jf_string_t* jf_string;
typedef void jf_unit;
typedef int jf_bool;
typedef void* jf_pointer;
typedef int jf_tag;

#define jf_true ((jf_bool)1)
#define jf_false ((jf_bool)0)

jf_string jf_make_string(const char* lit);
jf_string jf_string_concat(jf_string left, jf_string right);

void* _jf_allocate(size_t size);

#define jf_allocate(T) ((T*)_jf_allocate(sizeof(T)))