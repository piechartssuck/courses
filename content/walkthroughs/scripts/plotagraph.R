# Load package
library(igraph)

# Input data
mydata <- data.frame(from=c("Paul", "Sara", "Abhik", "Reagan", "Karen", "Kristin"),
                        to=c("Abhik", "Abhik", "Jessica", "Abhik", "Sara", "Abhik"))

# If you have your own data you could read it in using a CSV file as follows:
#mydata <- read.csv("mydata.csv")

# Load a directed graph from data frame 
g <- graph.data.frame(mydata, directed=TRUE)

# Plot graph
plot(g)
