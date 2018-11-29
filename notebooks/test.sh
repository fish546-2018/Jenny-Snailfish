#!/bin/bash
set -e
set -u
set -o pipefail
filelist=$(find sample1/ -maxdepth 1 -name "*.gz")
for file in ${filelist}
do
  rdtest=$(zcat ${file} | echo $((`wc -l`/4)))
if test $rdtest -le 100000
  then
    cp ${file} sample1/fewreads 
  else
    cp ${file} sample1/manyreads
  fi
done




