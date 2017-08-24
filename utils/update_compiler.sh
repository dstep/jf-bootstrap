#!/bin/bash

set -e

root="$(dirname "$0")"
if [[ $(git ls-files -m "$root/known_good.exe") ]]; then
	echo "Known_good.exe is modified!"
	exit 1
fi

./selfcheck.sh

cp "$root/../build/compiler/bin/jfprogram.exe" "$root/known_good.exe"

echo "Compiler updated"