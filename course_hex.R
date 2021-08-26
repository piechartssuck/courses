# Graphic for the bottom of the main page 

# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Remove objects ----
rm(list = ls())

# Libraries
library(tidyverse)
library(RColorBrewer)
library(hexSticker)
library(wesanderson)
library(showtext)
font_add_google("Roboto Condensed", "roboto")
font_add("Futura", "Futura-CondensedMedium.ttf")
showtext_auto()

# Wrangle ----
sequence_dates <- seq.Date(from = as.Date("2009-12-31"), 
                           to = as.Date("2021-12-31"), 
                           by = 3)

    spiral <- 
        tibble(date = sequence_dates,
               day_num = 1:length(sequence_dates),
               temp = rnorm(length(sequence_dates), 5, 5)) %>%
        mutate(inv_temp = 1/temp) %>%
        ggplot(aes(x = day_num %% 365, 
                   y = 0.07*day_num + temp/2,
                   height = temp,
                   fill = temp, 
                   color = inv_temp)) + 
        geom_tile(alpha = 0.6) + 
        scale_y_continuous(limits = c(-30, NA)) +
        scale_x_continuous(breaks = 50*0:30, 
                           minor_breaks = NULL) +
        coord_polar() + 
        theme_void(base_family = "Futura") +
        theme_transparent() +
        scale_fill_gradientn(colors = wes_palette("FantasticFox1", 
                                                  length(sequence_dates), 
                                                  type = "continuous")) +
        guides(fill = FALSE,
               color = FALSE); spiral

# Save the various types of hex ----
sticker(spiral, 
        package="Program Evaluation", 
        p_size=14, 
        p_x = 1.15,
        p_y = 1.0,
        s_x=0.65, 
        s_y=0.97, 
        s_width=1.8, 
        s_height=1.8,
        h_fill="#292A30",
        h_color="#293840",
        p_family = "Futura",
        filename="static/img/course_hex.png")

sticker(spiral, 
        package="", 
        s_x=1.0, 
        s_y=1.0, 
        s_width=1.6, 
        s_height=1.6,
        h_fill="#292A30",
        h_color="#293840",
        filename="icon.png")

ggsave("slack_hex.png",
       spiral,
       bg = "#293840")

# init borrowed from https://stackoverflow.com/questions/52939337/how-to-create-a-time-series-spiral-graph-using-r