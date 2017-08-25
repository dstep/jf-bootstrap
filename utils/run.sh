#!/bin/bash

set -e

root="$(dirname "$0")"
prog=$1
shift

"$root/jfc.sh" stable compiler
"$root/jfc.sh" --run compiler "$prog" "$@"