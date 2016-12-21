#gShell Scripts for Creating Graph Stores

- graphCreate.g loads in the vertex and edge files from the data processing scripts
and creates the graph store of the large yelpFull graph. This script executed first.
- influentialBusiness.g filters the yelpFull graph for business with at least 1000 reviews and creates
the yelpPop graph store.
- pittsburghGraphGen.g filters the yelpFull graph for in Pittsburgh with at least 100 reviews and creates
the yelpPitt graph store.

To run these scripts, navigate to the IBM System G folder and execute the following:
```
./bin/gShell interactive < someScript.g
```
