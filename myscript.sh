#incase we need to reindex the db
formatdb -p F -o T -i Escherichia_coli_str_k_12_substr_mg1655. ASM584v2.cds.all.fa

#incorporate some mismatches
msbar -sequence 14.fa -count 100 -point 4 -block 0  -o -outseq mysample_mutated.fa

#run blast
blast2 -m 8 -p blastn -e 0.001 -d Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.cds.all.fa -i mysample_mutated.fa
