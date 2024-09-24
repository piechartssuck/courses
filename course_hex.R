# Graphic for the bottom of the main page 

# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Remove objects ----
# rm(list = ls())

# Libraries
library(tidyverse)
library(RColorBrewer)
library(hexSticker)
library(tidyquant)
library(ggfx)
library(showtext)
font_add("benguiat", "benguiat-bold.ttf")
showtext_auto()

# Wrangle ----
apple_stock <- tidyquant::tq_get(c("AAPL"),
                    get = "tiingo",
                    from="2018-01-01") 

apple_plot <-
  ggplot(apple_stock,
         aes(x = date, y = adjusted)) +
  with_outer_glow(geom_bar(size = 0.5,
                           stat="identity"),
                  colour = "#ff1493",
                  sigma = 5,
                  expand = 1) +
    with_inner_glow(
      with_outer_glow(geom_jitter(aes(size = adjHigh),
                           stat = "identity",
                           color = "#ffffff",
                           show.legend = FALSE),
                  colour = "#ff1493",
                  sigma = 15,
                  expand = 3),
      colour = "#09fbd3",
      sigma = 5,
      expand = 1) +
  scale_size(range = c(0.01,0.1)) +
  theme_minimal() +
  theme(axis.title = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        panel.background = element_blank()); apple_plot

apple_plot_titled <- 
  apple_plot +
  theme(plot.title = element_text(size = 40,
                            family = "benguiat", 
                            color ="#f7f7f7", 
                            hjust = 0.55, 
                            lineheight = 0.3,
                            margin = margin(b = -0.50, t = -0.2 ,unit = "cm")),
  plot.title.position = "plot") +
  ggtitle("Introduction\nto Research"); apple_plot_titled


# FacetNull# Save the various types of hex ----
sticker(apple_plot_titled, 
        package = "", 
        p_size = 10, 
        p_x = 1.00,
        p_y = 1.25,
        s_x = 0.80, 
        s_y = 0.91, 
        s_width = 2.5, 
        s_height = 1.0,
        h_fill = "#292A30",
        h_color = "#293840",
        p_family = "benguiat",
        filename = "static/img/course_hex.png")

sticker(apple_plot, 
        package="", 
        s_x=1.0, 
        s_y=1.0, 
        s_width=2.2, 
        s_height=1.2,
        h_fill="#292A30",
        h_color="#293840",
        filename="icon.png")

ggsave("slack_hex.png",
       apple_plot,
       bg = "#293840")

# init borrowed from https://stackoverflow.com/questions/52939337/how-to-create-a-time-series-spiral-graph-using-r