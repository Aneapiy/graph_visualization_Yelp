create --graph yelpFull --type directed
load_csv_vertices --graph yelpFull --csvfile /home/hadoop/dataSet/yelpFull/vBusinessFull.csv --keypos 0 --labelpos 1
load_csv_vertices --graph yelpFull --csvfile /home/hadoop/dataSet/yelpFull/vBusinessFull.csv --keypos 0 --labelpos 1
load_csv_edges --graph yelpFull --csvfile /home/hadoop/dataSet/yelpFull/eReviewshalf.csv --srcpos 0 --targpos 1 --labelpos 2
close_all