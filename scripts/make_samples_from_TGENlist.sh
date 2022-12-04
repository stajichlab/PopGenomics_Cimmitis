cd input

ls *_R1_001.fastq.gz | perl -p -e 's/(\S+)(_L\d+)_R1_001.fastq.gz/$1$2,$1,,TGEN-NORTH,,,Coccidioides immitis/; s/,Coccidioides_spp_/,/; s/_[ACGT]+\-[ACGT]+,/,/; s/,COCSP\-/,/; s/,(\S+)\-uu\S+BB_S\d+,/,$1,/; s/,NACVFR_Cocci_(\S+)_S\d+,/,$1,/' > samples.csv
cat samples.csv >> ../samples.csv
rm samples
