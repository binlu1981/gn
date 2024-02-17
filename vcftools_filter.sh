inp="cohort.snp.filtered.vcf.gz"
outp=`basename ${inp} .vcf.gz`
vcftools --gzvcf ${inp} \
--max-missing 0.9 \
--maf 0.05 \
--minDP 2 \
--maxDP 30 \
--remove-indels \
--recode \
--recode-INFO-all \
--stdout | bgzip -c > ${outp}.miss90.d2D30.vcf.gz
