inp="cohort.snp.miss90.d2D30.vcf.gz"
outp=`basename ${inp} .vcf.gz`
for w in 20000;
do
for i in GN GM GD;
do
vcftools --gzvcf ${inp} \
--TajimaD ${w} \
--keep ${i}_pop.txt \
--out ${outp}.TajimaD.${i};
done
done