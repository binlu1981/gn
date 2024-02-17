gatk VariantFiltration \
    -R genome.fa \
    -V cohort.snp.raw.vcf.gz \
    -O cohort.snp.filtered.vcf.gz \
    --filter-name "QD2" --filter-expression "QD < 2.0" \
    --filter-name "FS60" --filter-expression "FS > 60.0" \
    --filter-name "SOR3" --filter-expression "SOR > 3.0" \
    --filter-name "MQ40" --filter-expression "MQ < 40.0" \
    --filter-name "MQRS-12.5" --filter-expression "MQRankSum < -12.5" \
    --filter-name "RPRS-8" --filter-expression "ReadPosRankSum < -8.0"