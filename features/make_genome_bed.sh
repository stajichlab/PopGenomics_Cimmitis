
cut -f1,2 ../genome/FungiDB-49_CimmitisRS_Genome.fasta.fai > genome.txt
awk 'BEGIN{OFS="\t"} { print $1,1,$2 }' genome.txt > genome.bed
