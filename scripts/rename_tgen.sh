cd input
for file in $(ls *_R[12]_001.fastq.gz); do new=$(echo -n $file | perl -p -e 's/_R([12])_001/_$1/'); mv $file $new; done
