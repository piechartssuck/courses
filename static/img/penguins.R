# Graphic for the bottom of the main page 

# Set the working directory as source  (if needed) ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

library(tidyverse)
library(palmerpenguins)
library(RColorBrewer)
library(hrbrthemes)
data(package = 'palmerpenguins')

penguins_plot <- 
  penguins %>%
  drop_na() %>%
  ggplot(aes(x = year, 
             y = bill_depth_mm, 
             fill = factor(year),
             color = factor(year),
             group = year)) +
  geom_jitter(width = 0.1,
              height = 0.1,
              alpha = 0.2,
              size = 4,
              shape = 21,
              show.legend = FALSE,
              stroke = 0.1) +
  geom_boxplot(alpha = 0.3,
               show.legend = FALSE) +
  scale_fill_manual(values=c("#5C9AC5","#82BD4E","#EE6A64")) +
  scale_color_manual(values=c("#EEEEEE","#EEEEEE","#EEEEEE")) +
  theme_void() + 
  theme_ipsum(axis_text_size = 0,
              axis_title_size = 0,
              plot_title_size = 0,
              subtitle_size = 0,
              strip_text_size = 0)

penguins_plot

ggsave("penguins.pdf",
       width = 297, 
       height = 210,
       units = "mm")

png(file = "publication choropleth facet map by state.png",
    bg = "transparent",
    res = 300,
    width = 11.694, 
    height = 8.264,
    units = "in")

penguins_plot

dev.off()