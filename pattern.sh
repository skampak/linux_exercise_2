#!/bin/bash

wget  139.91.162.50/bioinf2018/fasta.fa

grep -v '^>' | grep -ve '^$' | grep -c '[-]\{1\}'

grep -v '^>' | grep -ve '^$' | grep -c '[-]\{2\}'

grep -v '^>' | grep -ve '^$' | grep -vc '[-]\{1\}'

grep -v '^>' | grep -ve '^$' | grep -o -i '[ATGC]_[ATGC]_[ATGC]'| wc -l

grep -v '^>' | grep -ve '^$' | grep -o '[G]\{3\}[CT][AG] | sort | uniq -ic
