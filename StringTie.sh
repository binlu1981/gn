gtf="path/to/genome.gtf"
for i in *.bam;
do
prefix=`basename ${i} .bam`;
stringtie -e -B -p 1 -G ${gtf} -o "${prefix}/transcripts.gtf" -A "${prefix}/gene_abundances.tsv" ${i};
done