hisat2 -p 1 --rg-id "${group}" --rg PL:ILLUMINA --rg LB:LIBRARY --rg SM:"${sampleid}" \
--un-conc-gz ${outpth} --summary-file "${outpth}/${bam}.summary.txt" --dta -x ${idx} -1 ${fq1} -2 ${fq2} |\
samtools sort -@ 1 -m 10G -O bam -o "${outpth}/${bam}";
samtools index -@ 1 "${outpth}/${bam}";