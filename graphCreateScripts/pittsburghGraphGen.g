open --graph yelpFull
filter_vertices --graph yelpFull --label business --prop city review_count --condition "city==Pittsburgh && review_count>=100" --out b2 --idonly --format vertexcsv --redirect ./exports/Pitt20Reviews.csv
analytic_degree_centrality --graph yelpFull --in b2 --redirect ./exports/pittCentrality.csv --format vertexcsv
get_egonet --graph yelpFull --in b2 --depth 1 --maxdegree 150 --maxnumvertices 10000 --format vertexcsv --redirect ./exports/pittEgoNetV.csv --out e2
get_subgraph --graph yelpFull --in e2 --out s2 --format edgecsv --redirect ./exports/pittEgoNetE.csv
close --graph yelpFull

create --graph yelpPitt --type directed
load_csv_vertices --graph yelpPitt --csvfile ./exports/pittEgoNetV.csv --keypos 0 --labelpos 1
load_csv_edges --graph yelpPitt --csvfile ./exports/pittEgoNetE.csv --srcpos 0 --targpos 1 --labelpos 2
analytic_start_engine --graph yelpPitt --edgeweightpropname stars --restart
filter_vertices --graph yelpPitt --label business user --idonly --out allV --redirect ./exports/yelpPittAllV.json
update_vertex --graph yelpPitt --in allV --propwithtype pRank:double:0.5 --redirect ./exports/PittPUpdate.json
analytic_pagerank --graph yelpPitt --prop pRank --restart --num 10
analytic_degree_centrality --graph yelpPitt --redirect ./exports/pittCentrality.json
close_all
