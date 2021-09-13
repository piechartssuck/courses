#PLOT ADJACENCY MATRIX

# Load igraph
library(igraph)

# Bring in your csv file if you know the path: 
adj <- read.csv("mydata.csv", header = TRUE, row.names=1,check.names=FALSE)

# Bring in your csv file if you want to locate the path:
adj <- read.csv(file.choose(),header=TRUE,row.names=1,check.names=FALSE) 

# Converts the data set into an igraph friendly matrix
fm <- as.matrix(adj)

# Converts the matrix into a "graph object"
g <- graph.adjacency(fm,mode="directed",weighted=NULL)

# Plot graph
plot(g)