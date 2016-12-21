# Graph Visualization and PageRank of the Yelp Social Recommender Network

Columbia University EECS E6893 Big Data Analytics Fall 2016 Final Project

Group: 201612-95

Technical report and video are available at [this link](http://www.ee.columbia.edu/~cylin/course/bigdata/projects/).

##Abstract
Yelp users traditionally interact with business listings by looking at star ratings and reading other user’s reviews. However, manually scanning through pages of ratings and reviews isn’t scalable. A city like Pittsburgh can contain over thousands of business listings and tens of thousands of reviews. I propose a network graph visualization of the Yelp social recommender network that uses PageRank relative node size to illustrate business importance and influence. To demonstrate the benefits of graph visualization, I created sample graphs using data from the Yelp Academic Dataset Round 8. 

##Dataset
This project is based on the Yelp Academic Dataset Round 8.
The JSON structure of the original dataset can be seen in rawDataNotes.md.

The dataset contains the following:
- 2.7 Million Reviews
- 648k Tips
- 86k Businesses
- 687k Users
- 4.2 M Social Edges
- 10 Cities
