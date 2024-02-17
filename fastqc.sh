for i in *fastq.gz;
do
fastqc -t 1 ${i} -o ./fastqc
done