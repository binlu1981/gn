inp="cohort.snp.miss90.d2D30.vcf.gz"
outp=`basename ${inp} .vcf.gz`
for w in 20000;
step="20000";
for i in GN GM GD;
do
vcftools --gzvcf ${inp} \
--window-pi $w \
--window-pi-step $step \
--keep ${i}_pop.txt \
--out ${outp}.pi.${i};
done
done