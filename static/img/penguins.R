# Graphic for the bottom of the main page 

# Set the working directory as source  (if needed) ----
# setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

library(tidyverse)
library(palmerpenguins)
library(RColorBrewer)
library(hrbrthemes)
# data(package = 'palmerpenguins')

penguins_plot <- 
  penguins %>%
  drop_na() %>%
  ggplot(aes(x = bill_depth_mm, 
             y = year, 
             fill = factor(year),
             color = factor(year),
             group = year)) +
  geom_jitter(width = 0.1,
              height = 0.1,
              alpha = 0.1,
              size = 1,
              shape = 21,
              show.legend = FALSE,
              stroke = 0.01) +
  geom_boxplot(alpha = 0.02,
               show.legend = FALSE,
               size = 0.01, 
               width = 0.5) +
  scale_fill_manual(values=c("#5C9AC5","#82BD4E","#EE6A64")) +
  scale_color_manual(values=c("#90d2d8","#b7ded2","#f6a6b2")) +
  theme_void() + 
  theme_ft_rc(axis_text_size = 0,
              axis_title_size = 0,
              plot_title_size = 0,
              subtitle_size = 0,
              strip_text_size = 0) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()); penguins_plot

png(file = "static/img/penguins.png",
    bg = "transparent",
    res = 300,
    width = 4.264, 
    height = 2.00,
    units = "in")

penguins_plot

dev.off()

