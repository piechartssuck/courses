#CONVERT AN EDGELIST TO AN ADJACENCY MATRIX

# Load the package igraph
library(igraph)

# Load your edgelist (path)
edgelist <- read.csv("youredgelist.csv")

# Load your edgelist (GUI): 
edgelist <- read.csv(file.choose(), header = TRUE)

# Create an igraph mapping from your edgelist data set
G <- graph.data.frame(edgelist,directed=FALSE)

# Create an adjacency matrix using the mapping 
mydata <- as_adjacency_matrix(G,type="both",names=TRUE,sparse=FALSE)

# Save your adjacency matrix (path)
write.csv(mydata, file = "youradjacencymatrixUND.csv")
