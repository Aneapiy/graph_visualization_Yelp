# Graph Visualization and PageRank of the Yelp Social Recommender Network

Columbia University EECS E6893 Big Data Analytics Fall 2016 Final Project

Group: 201612-95

Technical report and video are available at [this link](http://www.ee.columbia.edu/~cylin/course/bigdata/projects/).

##Abstract
Yelp users traditionally interact with business listings by looking at star ratings and reading other user’s reviews. However, manually scanning through pages of ratings and reviews isn’t scalable. A city like Pittsburgh can contain over thousands of business listings and tens of thousands of reviews. I propose a network graph visualization of the Yelp social recommender network that uses PageRank relative node size to illustrate business importance and influence. To demonstrate the benefits of graph visualization, I created sample graphs using data from the Yelp Academic Dataset Round 8. 

##Dataset
This project is based on the [Yelp Academic Dataset Round 8](https://www.yelp.com/dataset_challenge).
The JSON structure of the original dataset can be seen in rawDataNotes.md.

The dataset contains the following:
- 2.7 Million Reviews
- 648k Tips
- 86k Businesses
- 687k Users
- 4.2 M Social Edges
- 10 Cities

##Repo Overview
Vertex and edge files for the yelpPop and yelpPitt graphs are in the [sampleGraph folder](https://github.com/Aneapiy/graph_visualization_Yelp/tree/master/sampleGraph).
Python and R scripts used for processing raw JSON files from the Yelp Academic Dataset
are stored in the [dataProcScripts folder](https://github.com/Aneapiy/tree/master/graph_visualization_Yelp/dataProcScripts).

##Setup Instructions

###Equipment
All demostrations for this project were hosted in Ubuntu 14.04 on an Amazon AWS EC2 cloud instance. 
The m4.large EC2 instance has:
- 2 Intel Xeon 2.40 GHz E5-2676 processors
- 8 GB of RAM
- 100GB of SSD storage.

Set up instructions are applicable to Ubuntu 14.04 only. The set up may require slight modifications to work
on other Linux distros.

###Language requirements
This project requires:
- Python 2.7.6 or higher
- R version 3.3.2 or higher with the jsonlite library installed

The scripts may run with older Python or R versions, but I don't guarantee that it will.

To install R run the following commands.
```
sudo apt-get update
sudo apt-get install r-base
```
Start R then run the following command to install jsonlite.
```
install.packages("jsonlite")
```

###IBM System G Graph Tools
IBM System G Graph Tools can be downloaded from [this link](http://systemg.research.ibm.com/download.html).
Follow the instructions from [this link](http://systemg.research.ibm.com/1.5.0/setup.html) to set up the software.

To start the graph store and visualizer, navigate to the System G folder and run the following commands.

Start UI server:
```
./bin/startuiserver.sh&
```
Start graph database:
```
./bin/runggsserver.sh
Type ctrl z
bg
disown
```
