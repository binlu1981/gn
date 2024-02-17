for p in `ls *pep.fas`;
do
output=`echo $p |sed 's/pep.fas/pep.align.fas/'`;
mafft --anysymbol --quiet $p > $output;
done