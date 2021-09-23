# 1. install the package devtools by running install.packages("devtools")
# 2. install chorddiag by running devtools::install_github("mattflor/chorddiag")

# Libraries ----
library(tidyverse)
library(chorddiag)

# Create a totally fake data set ----
scores <- tibble(Math = c(40, 20, 10, 15),
                 Art = c(10, 52, 7, 21),
                 Science = c(45, 12, 34, 21),
                 PE = c(26, 66, 21, 10)) %>%
            as.matrix(); students

# Create row names for the data above ----
row.names(scores) = c("Class A", 
                      "Class B", 
                      "Class C", 
                      "Class D")

# Create the chord diagram ----
chorddiag(scores, 
          type = "bipartite", 
          showTicks = F, 
          groupnameFontsize = 14, 
          groupnamePadding = 10, 
          margin = 90)

