gatk --java-options "-Xmx200g" GenotypeGVCFs \
   -R genome.fa \
   -V cohort.gvcf.gz \
   -O cohort.vcf.gz