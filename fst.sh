inp="cohort.snp.miss90.d2D30.vcf.gz"
outp=`basename ${inp} .vcf.gz`
f=(*_pop.txt)
for w in 20000;
step="20000";
for ((i = 0; i < ${#f[@]}; i++)); do 
for ((j = i + 1; j < ${#f[@]}; j++)); do 
pop1=`echo "${f[i]}" | sed 's/_pop.txt//'`;
pop2=`echo "${f[j]}" | sed 's/_pop.txt//'`;
vcftools --gzvcf ${inp} \
--fst-window-size $w \
--fst-window-step $step \
--weir-fst-pop ${f[i]} \
--weir-fst-pop ${f[j]} \
--out ${outp}.fst.${pop1}_${pop2};
done
done
done