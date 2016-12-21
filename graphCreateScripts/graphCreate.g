create --graph yelpFull --type directed
load_csv_vertices --graph yelpFull --csvfile $FILEPATH/vBusinessFull.csv --keypos 0 --labelpos 1
load_csv_vertices --graph yelpFull --csvfile $FILEPATH/vBusinessFull.csv --keypos 0 --labelpos 1
load_csv_edges --graph yelpFull --csvfile $FILEPATH/eReviewshalf.csv --srcpos 0 --targpos 1 --labelpos 2
close_all
