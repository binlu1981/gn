__author__      = "Bin Lu"
__license__ 	= "GPL"
__version__     = "0.1"
__email__       = "lvbin@cib.ac.cn"
__date__        = "2019-06-11"


import glob
import argparse
import collections

parser = argparse.ArgumentParser()
parser.add_argument('-e',"--extension",type=str,default='fas',help='enter file extension')
parser.add_argument('-o',"--outextension",type=str,default='phylip',help='enter output file extension')
args = parser.parse_args()

print("USAGE: python fasta2paml.py -e <input file extension> -o <output file extension>")

for file in glob.glob("*"+args.extension):
	outfile = file.replace(args.extension,args.outextension)
	with open(file) as f:
		records = f.read()
		seq_list = records.split(">")[1:]
		seq1 = [seq.partition("\n") for seq in seq_list]
		seq2 = {seq[0].strip().split()[0]:seq[2].replace('\n','').strip() for seq in seq1}
		seq3 = collections.OrderedDict(sorted(seq2.items(), key=lambda kv: kv[1]))
	with open(outfile,'w') as op:
		op.write("\t{}  {}\n".format(len(seq3),len(list(seq3.values())[0])))
		for x in sorted(list(seq3.keys())):
			op.write("{}  {}\n".format(x.strip(),seq3[x].strip()))
	
	