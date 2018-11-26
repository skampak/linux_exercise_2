#!/bin/bash

wget  139.91.162.50/bioinf2018/fasta.fa

grep -v '^>' fasta.fa | grep -ve '^$' | grep -c '[-]\{1\}'

grep -v '^>' fasta.fa | grep -ve '^$' | grep -c '[-]\{2\}'

grep -v '^>' fasta.fa  | grep -ve '^$' | grep -vc '[-]\{1\}'

grep -v '^>' fasta.fa  | grep -ve '^$' | grep -o -i '[ATGC]_[ATGC]_[ATGC]'| wc -l

grep -v '^>' fasta.fa  | grep -ve '^$' | grep -o '[G]\{3\}[CT][AG] | sort | uniq -ic

grep '^>' fasta.fa  | grep -c 'hg19'
