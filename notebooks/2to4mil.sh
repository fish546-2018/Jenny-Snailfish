#!/bin/bash
set -e
set -u
set -o pipefail

samplename=$1
rdtest=$(zcat sampleI/cap/"${samplename}".fq.gz | echo $((`wc -l`/4)))
a=$(("$rdtest"-2000000))
b=$(($a/2))
c=$(($b*4))
startline=$(($c+1))
#echo "${startline}"
endline=$((8000000+"${startline}"))
#echo "${endline}"
zcat sampleI/cap/"${samplename}".fq.gz | awk -v s="${startline}" -v e="${endline}" 'NR>=s&&NR<e' | gzip > sampleI/include/"${samplename}-cap.fq.gz"
