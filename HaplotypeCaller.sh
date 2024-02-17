for i in *.markdup.bam;
do
bam=`ls *"${i}.sorted.markdup.bam"`;
out=`echo ${bam}|sed 's/sorted.markdup.bam/g.vcf.gz/'`;
gatk --java-options "-Xmx20g" HaplotypeCaller  \
-R genome.fa \
-I "${bam}" \
-O "${out}" \
-ERC GVCF
done