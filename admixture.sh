inp="cohort.snp.miss90.d2D30.pruned.bed"
for k in {1..9};
do
admixture --cv=5 ${inp} $k -j4 |\
tee log${k}.out;
done