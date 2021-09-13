#PLOT EDGE LIST

# Load igraph
library(igraph)

# Bring in your csv file if you know the path: 
mydata <- read.csv("~/Documents/WVU/Teaching/EDP 693E Fall 2017/Snippets/2 Load a CSV/edgelist.csv", header = TRUE)

# Bring in your csv file if you like a GUI: 
mydata <- read.csv(file.choose(), header = TRUE)

# Converts the data into a two-column matrix format for igraph 
el=as.matrix(mydata)
el[,1]=as.character(el[,1])
el[,2]=as.character(el[,2])

# Converts the edgelist into a generic graph called a "graph object"
g <- graph.edgelist(el,directed=TRUE)

# Alternative method that you can run right after reading the csv file 
# (easier way but try the other procedure first so you know what is going on)
g <- graph.data.frame(mydata,directed=FALSE)

# Plot graph
plot(g)
