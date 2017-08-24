#!/bin/bash

set -e

cd "$(dirname "$0")"

echo "Phase 1, compiling with a stable compiler..."
./jfc.sh stable compiler
echo "Phase 2, compiling with a new compiler..."
./jfc.sh compiler compiler
echo "Phase 3, recompiling with a new compiler..."
./jfc.sh compiler compiler
echo "Phase 4, running test..."
./jfc.sh compiler test && ./run.sh test

echo "Self-check successful"