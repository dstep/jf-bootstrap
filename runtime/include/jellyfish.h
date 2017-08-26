#include <stddef.h>
#include <stdint.h>

typedef int32_t jf_i32;
typedef int64_t jf_i64;
typedef uint64_t jf_u64;
typedef const char* jf_string;
typedef void jf_unit;
typedef int jf_bool;
typedef void* jf_pointer;
typedef int jf_tag;

#define jf_true ((jf_bool)1)
#define jf_false ((jf_bool)0)

jf_string jf_make_string(const char* lit);
jf_string jf_string_concat(jf_string left, jf_string right);
jf_i32 jf_compare_strings(jf_string left, jf_string right);

void* _jf_allocate(size_t size);

#define jf_allocate(T) ((T*)_jf_allocate(sizeof(T)))
#define jf_allocate_array(T, size) ((T*)_jf_allocate(sizeof(T) * size))