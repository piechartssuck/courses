# Graphic for the bottom of the main page 

# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Remove objects ----
rm(list = ls())

# Libraries
library(ggraph)
library(tidygraph)
library(igraph)
library(graphlayouts)
library(tidyverse)
library(patchwork)
library(sankeyD3)
library(showtext)
font_add_google("Bebas Neue", "babas")
font_add(family = "Neon", 
         regular = "NeonTubes2.otf")
font_add(family = "Roboto Condensed", 
         regular = "RobotoCondensed-Regular.ttf",
         bold = "RobotoCondensed-Bold.ttf",
         italic = "RobotoCondensed-Italic.ttf")
font_add("Futura", "Futura-CondensedMedium.ttf")
showtext_auto()
library(hexSticker)
library(ggfx)

set.seed(660)
n = 7
#create network with a group structure
g <- sample_islands(n, 40, 0.4, 20)
g <- igraph::simplify(g)
V(g)$grp <- as.character(rep(1:n, each = 40))
V(g)$eig <- evcent(g)$vector
V(g)$degree <- degree(g)   

# Backbone ----
bb <- layout_as_backbone(g,
                         keep = 0.3)
E(g)$col <- F
E(g)$col[bb$backbone] <- T

backbone_plot <- 
  ggraph(g,
         layout="manual",
         x=bb$xy[,1],
         y=bb$xy[,2])+
  with_inner_glow(sigma = 6,
                  color = "#bbbbbb",
                  expand = 0.2,
    with_outer_glow(sigma = 4,
                    color = "#bbbbbb",
      geom_edge_arc(aes(color="#bbbbbb"),
                    color="#b2d8d8",
                alpha = 0.10,
                edge_width = 0.04,
                show.legend = FALSE,
                strength = 0.43)))+
  with_inner_glow(sigma = 5,
                  color = "white",
                  expand = 0.2,
             strength = 0.05,
             with_outer_glow(sigma = 1,
                             color = "white",
             geom_node_point(aes(col=grp, size = eig),
                  size = 0.05,
                  show.legend = FALSE))) +
  scale_color_brewer(palette = "Spectral")+
  scale_edge_color_manual(values=c(rgb(0,0,0,0.3),rgb(0,0,0,1)))+
  theme_graph(base_family = "Neon") +
  theme(legend.position = "none",
        aspect.ratio = 1,
        plot.title = element_text(face = "bold")) +
  theme_void() +
  scale_size_continuous(range = c(0.1, 0.1)); backbone_plot 

sticker(backbone_plot, 
        package="Social Network Analysis", 
        p_size=6.3, 
        p_x=1.25,
        p_y=1.45,
        s_x=0.9, 
        s_y=1.1, 
        s_width=1.5, 
        s_height=1.5,
        h_fill="#292A30",
        h_color="#293840",
        p_family = "Neon",
        filename="course_hex.png")

sticker(backbone_plot, 
        package="", 
        s_x=0.9, 
        s_y=1.1, 
        s_width=1.5, 
        s_height=1.5,
        h_fill="#292A30",
        h_color="#293840",
        filename="icon.png")

# plot
slack_icon <-
  ggraph(g,
                       layout="manual",
                       x=bb$xy[,1],
                       y=bb$xy[,2])+
  with_inner_glow(sigma = 6,
                  color = "#bbbbbb",
                  expand = 0.2,
                  with_outer_glow(sigma = 4,
                                  color = "#bbbbbb",
                                  geom_edge_arc(aes(color="#bbbbbb"),
                                                color="#b2d8d8",
                                                alpha = 0.10,
                                                edge_width = 0.04,
                                                show.legend = FALSE,
                                                strength = 0.43)))+
  with_inner_glow(sigma = 5,
                  color = "white",
                  expand = 0.2,
                  strength = 0.05,
                  with_outer_glow(sigma = 1,
                                  color = "white",
                                  geom_node_point(aes(col=grp, size = eig),
                                                  size = 2,
                                                  show.legend = FALSE))) +
  scale_color_brewer(palette = "Spectral")+
  scale_edge_color_manual(values=c(rgb(0,0,0,0.3),rgb(0,0,0,1)))+
  theme_graph(base_family = "Neon") +
  theme(legend.position = "none",
        aspect.ratio = 1,
        panel.background = element_rect(fill = "#292A30",
                                        color = "#293840",
                                        linetype = "blank"),
        plot.background = element_rect(fill = "#292A30",
                                       color = "#293840")); slack_icon
  
ggsave(slack_icon,
       file="slack_icon.png",
       width = 210,
       height = 210,
       units = "mm"
      )
  
  

