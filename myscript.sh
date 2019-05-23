#incase we need to reindex the db
#formatdb -p F -o T -I Escherichia_coli_str_k_12_substr_mg1655. ASM584v2.cds.all.fa

#incorporate some mismatches
msbar -sequence mysample.fa -coutnt 100 -point 4 -block 0  -o -outsequence mysample_mutated.fa

#
