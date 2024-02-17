inp="cohort.snp.miss90.d2D30.vcf.gz"
outp=`basename ${inp} .vcf.gz`
for c in `seq 1 24`
do
xpclr --out ${outp}.xpclr.A_B.Chr${c} \
--format vcf \
--input ${inp} \
--samplesA popA.txt \
--samplesB popB.txt \
--size 20000 \
--step 20000 \
--chr Chr${c};
done