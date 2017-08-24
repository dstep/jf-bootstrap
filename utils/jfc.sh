#!/bin/bash

set -e

compiler_type=$1

proj_name=$2

root="$(dirname "$0")"
proj_dir="$(readlink -f "$root/../projects")"
proj_path="$proj_dir/$proj_name.jfproject"
module_dir="`readlink -f "$root/../modules"`"
output_dir="`readlink -f "$root/../build/$proj_name"`"

if [ $compiler_type = "stable" ] 
then
	CC="$root/known_good.exe"
else 
	CC="$root/../build/$compiler_type/bin/jfprogram.exe"
fi

"$CC" "$module_dir" "$proj_path" "$output_dir"
./build_ll_to_exe2.sh "$output_dir"
