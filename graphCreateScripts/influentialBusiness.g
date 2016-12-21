open --graph yelpFull
filter_vertices --graph yelpFull --label business --prop review_count --condition "review_count>=1000" --out b1 --idonly --format vertexcsv --redirect ./exports/yelpPopFilter.csv
analytic_degree_centrality --graph yelpFull --in b1 --redirect ./exports/yelpPopCentrality.csv --format vertexcsv
get_egonet --graph yelpFull --in b1 --depth 1 --maxdegree 150 --maxnumvertices 10000 --format vertexcsv --redirect ./exports/yelpPopEgoNetV.csv --out e1
get_subgraph --graph yelpFull --in e1 --out s1 --format edgecsv --redirect ./exports/yelpPopEgoNetE.csv
close --graph yelpFull

create --graph yelpPop --type directed
load_csv_vertices --graph yelpPop --csvfile ./exports/yelpPopEgoNetV.csv --keypos 0 --labelpos 1
load_csv_edges --graph yelpPop --csvfile ./exports/yelpPopEgoNetE.csv --srcpos 0 --targpos 1 --labelpos 2
analytic_start_engine --graph yelpPop --edgeweightpropname stars --restart
filter_vertices --graph yelpPop --label business user --idonly --out allV --redirect ./exports/yelpPopAllV.json
update_vertex --graph yelpPop --in allV --propwithtype pRank:double:0.5 --redirect ./exports/pUpdate.json
analytic_pagerank --graph yelpPop --prop pRank --restart --num 10
close_all
