#!/bin/bash
set -e
set -u
set -o pipefail

samplename=$1
zcat sampleI/cap/"${samplename}".fq.gz | awk 'NR>=4000001&&NR<12000001' | gzip > sampleI/include/"${samplename}-cap.fq.gz"
