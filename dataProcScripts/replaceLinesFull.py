############################
## replaceLinesFull.py
############################
"""
Script for replacing special escape characters in the original yelp academic dataset files.
Special characters such as \n cause problems for the JSON to CSV conversions.
If you want to include review text in the edge file, use this script to replace
special characters such as \n in the JSON review file. This script is much faster
than doing the replacement in R.
"""

with open("yelp_academic_dataset_review.json", "rt") as fin:
	with open("reviewFullOut.json", "wt") as fout:
		for line in fin:
            		fout.write(line.replace(r'\n', '')) #.replace(r'\\','').replace(r'\u',''))
	fout.close()
fin.close()
