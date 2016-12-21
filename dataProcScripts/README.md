#Data processing scripts in R and Python

The json_to_csv_converter.py is a copy of the script provided by Yelp [here](https://github.com/Yelp/dataset-examples).

The user and business JSON files were used to create vertex files.
The python json_to_csv_converter.py provided with the dataset by Yelp converts the user JSON file into a CSV file.
The R script makeVUserFull.R then uses that CSV user file as an input and outputs a user vertex CSV file called vUserFull.csv.
The R script makeVBusinessFull.R creates a business vertex CSV file called vBuisnessFull.csv directly from the raw JSON file.
If the user has 16GB of RAM or more, the R script makeEReviewFull.R can create the edge CSV directly from the raw JSON review file.
If the user has less than 16GB of ram, the user needs to extract a subset of rows from the review file before running makeEReviewHalf.R. 
In all of the R scripts above, the input filename must match the user’s files.
