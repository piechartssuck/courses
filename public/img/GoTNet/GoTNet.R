library(tidygraph)
library(igraph)
library(ggraph)
library(graphlayouts)
library(tidyverse)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

GoTs3 <- 
  read_graph("GoT/gotS3.graphml",
             format="graphml") %>%
  as_tbl_graph() %>% 
  activate(nodes)  %>%
  mutate(centrality = centrality_authority()) %>%
  ggraph(layout = "stress") +
  geom_edge_fan(aes(edge_alpha = ..index..),
                edge_color = "#b2d8d8",
                strength = 0.6,
                n = 200,
                show.legend = FALSE) +
  geom_node_point(aes(size = size), 
                  col = "#FFFFFF") +
  geom_node_point(aes(fill = clu,
                      size = size,
                      alpha = centrality),
                  shape = 21,
                  color = "#FFFFFF",
                  show.legend = FALSE)+
  scale_fill_brewer(palette = "Spectral") +
  scale_edge_width_continuous(range = c(0.2,2))+
  scale_size_continuous(range = c(2,6))+
  scale_alpha(range = c(0.55, 0.75)) +
  theme_void() +
  theme(aspect.ratio = 1,
        legend.position = "none"); GoTs3
  
ggsave(GoTs3,
       file='../scatter.png',
       width = 100,
       height = 100,
       units = "mm")

                  