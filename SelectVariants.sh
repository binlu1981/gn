gatk SelectVariants \
     -R genome.fa \
     -V cohort.vcf.gz \
     --select-type-to-include SNP \
     -O cohort.snp.raw.vcf.gz