#CONVERT AN ADJACENCY MATRIX TO AN EDGELIST

# Load igraph
library(igraph)

# Bring in your csv file if you know the path: 
adj <- read.csv("mydata.csv", header = TRUE, row.names=1,check.names=FALSE)

# Bring in your csv file if you know the path:
adj <- read.csv(file.choose(),header=TRUE,row.names=1,check.names=FALSE) 

# Converts the data set into an igraph friendly matrix
fm <- as.matrix(adj)

# Converts the matrix into a "graph object." Note that  'mode =' here is important.
# If you want a directed grapoh based off of your adjacency matrix, you MUST specify 
# it here.
g <- graph.adjacency(fm,mode="directed",weighted=NULL)

# Find the 
mydata <- get.edgelist(g)

# Save your edgelist (path)
write.csv(mydata, file = "youradjacencymatrix.csv")
