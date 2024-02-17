inp="cohort.snp.miss90.d2D30.pruned"
outp=`basename ${inp}`
plink --bfile ${inp} \
--pca 3 \
--out ${outp}.pcaplink \
--allow-extra-chr \
--keep-allele-order \
--const-fid \
--noweb