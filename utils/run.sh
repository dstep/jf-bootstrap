#!/bin/bash

set -e

root="$(dirname "$0")"
prog=$1
shift
"$root/../build/$prog/bin/jfprogram.exe" $@ 