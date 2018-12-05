#!/bin/bash
set -e
set -u
set -o pipefail

samplename=$1
./sampleI/include/"${filename}"

ustacks -t gzfastq -f ./sampleI/include/"${filename}" -o ./stacks/ -i 1 -m 3 -p 15
