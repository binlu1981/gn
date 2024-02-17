for p in `ls *pep.align.fas`;
do
nuc=`echo $p |sed 's/pep.align.fas/cds.fas/'`;
out=`echo $p |sed 's/pep.align.fas/cds.align.fas/'`;
perl pal2nal.pl $p $nuc -output fasta >$out;
done