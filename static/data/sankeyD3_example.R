library(tidyverse)
library(networkD3)
library(palmerpenguins)

tibble <- 
  palmerpenguins::penguins %>%
  select(species, island, sex, year)

links <-
  tibble %>% 
  mutate(row = row_number()) %>%  # add a row id
  gather('col', 'source', -row) %>%  # gather all columns
  mutate(col = match(col, names(tibble))) %>%  # convert col names to col nums
  mutate(source = paste0(source, '_', col)) %>%  # add col num to node names
  group_by(row) %>%
  arrange(col) %>%
  mutate(target = lead(source)) %>%  # get target from following node in row
  ungroup() %>% 
  filter(!is.na(target)) %>%  # remove links from last column in original data
  select(source, target) %>% 
  group_by(source, target) %>% 
  summarise(value = n())  # aggregate and count similar links

# create nodes data frame from unque nodes found in links data frame
nodes <- data.frame(id = unique(c(links$source, links$target)),
                    stringsAsFactors = FALSE)
# remove column id from names
nodes$name <- sub('_[0-9]*$', '', nodes$id)

# set links data to the 0-based index of the nodes in the nodes data frame
links$source <- match(links$source, nodes$id) - 1
links$target <- match(links$target, nodes$id) - 1

sankeyNetwork(Links = links, Nodes = nodes, Source = 'source',
              Target = 'target', Value = 'value', NodeID = 'name')
