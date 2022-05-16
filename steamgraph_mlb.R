# Graphic for the bottom of the main page 

# Set the working directory as source ----
# setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Remove objects ----
# rm(list = ls())

# Library
library(tidyverse)
library(ggstream)
library(hrbrthemes)
library(Lahman)
library(baseballDBR)

# Create plot----

baseballDBR::get_bbdb(Pitching)

steamplot_plot <- 
  Pitching %>%
  filter(yearID > 1971) %>%
  group_by(yearID, teamID) %>%
  summarise_at(vars(ERA), list(avg_ERA = mean)) %>%
  drop_na(avg_ERA) %>%
  ggplot(aes(x = yearID, 
         y = avg_ERA, 
         fill = teamID)) +
  geom_stream(show.legend = FALSE) +
  geom_stream(true_range = "none",
             # alpha = 0.1,
              color = 0, 
              lwd = 0.25, 
              show.legend = FALSE) +
  scale_fill_viridis_d(option = "E",
                       alpha = 0.1) +
  theme_void() + 
  theme_ft_rc(axis_text_size = 0,
              axis_title_size = 0,
              plot_title_size = 0,
              subtitle_size = 0,
              strip_text_size = 0) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_rect(fill = "#292A30", 
                                        color = "#292A30", 
                                        size = 1),
        panel.grid = element_blank(),
        axis.text = element_blank(),
        axis.title = element_blank()); steamplot_plot

png(filename = here::here("static", "img", "steamplot.png"),
    bg = "transparent",
    res = 300,
    width = 4.264, 
    height = 2.00,
    units = "in")

steamplot_plot

dev.off()
