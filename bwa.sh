bwa mem -t 1 -M -R "@RG\tID:"${group}"\tPL:illumina\tLB:"${LBid}"\tSM:"${sampleid}"" \
genome.fa \
"${fq1}" \
"${fq2}" |\
samtools sort -@ 1 -m 10G -O bam -o "${outpth}/${bam}";
samtools index -c -@ 1 "${outpth}/${bam}";