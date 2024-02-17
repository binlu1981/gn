gatk CombineGVCFs \
   -R genome.fa \
   -V gvcf.list \
   -O cohort.gvcf.gz