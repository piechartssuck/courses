# Graphic for the bottom of the main page 

# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Remove objects ----
# rm(list = ls())

# Libraries
library(hexSticker)
library(tidyverse)
library(streamgraph)
library(httr)
library(zoo)      
library(hrbrmisc) 
library(viridis)
library(wesanderson)
library(showtext)
font_add("odibee", "OdibeeSans-Regular.ttf")
showtext_auto()

# Get data ----
URL <- "https://www.metoffice.gov.uk/hadobs/hadcrut4/data/current/time_series/HadCRUT.4.6.0.0.monthly_ns_avg.txt"

# Wrangle ----
global_temps <- 
    read_table(URL, col_names = FALSE) %>%
    select(year_mon = 1, median = 2, lower = 11, upper = 12) %>%
    mutate(year_mon = as.Date(as.yearmon(year_mon, format="%Y/%m")),
           year = as.numeric(format(year_mon, "%Y")),
           decade = (year %/% 10) * 10,
           month = format(year_mon, "%b")) %>%
    mutate(month = factor(month, levels=month.abb)) %>%
    filter(year != 2016) 

# Define palette ----
pal <- wes_palette("GrandBudapest1", 
                   100, 
                   type = "continuous")

#+ hadcrut, fig.retina=2, fig.width=12, fig.height=6

# Hex base ----
set.seed(123)
steam_plot <- 
    ggplot(global_temps) + 
    geom_segment(aes(x = year_mon, 
                     xend = year_mon, 
                     y = lower, 
                     yend = upper, 
                     color = year), 
                 size = 0.1,
                 alpha = 0.3,
                 show.legend = FALSE) + 
    scale_shape_manual(values = c(1)) +
    scale_size_continuous(range = c(0.000001)) +
    scale_x_date(expand = c(0,0.2)) +
    scale_y_continuous(name = NULL, 
                       breaks = c(0, 1.5, 2),
    limits = c(-2, 2.25)) + 
    scale_color_gradientn(colors = pal) +
    theme_minimal() +
    theme(axis.title = element_blank(),
          axis.text = element_blank(),
          axis.ticks = element_blank(),
          panel.grid.major = element_blank(), 
          panel.grid.minor = element_blank(),
          panel.background = element_blank()) +
    theme(plot.title = element_text(size = 40,
                                    family = "odibee", 
                                    color ="#f7f7f7", 
                                    hjust = 0.55, 
                                    lineheight = 0.3,
                                    margin = margin(b = -1.45, t = 2.1, unit = "cm")),
          plot.title.position = "plot");steam_plot 

# Hex base with title ----
steam_plot_titled <- 
    steam_plot +
    ggtitle("Measurement/Evaluation\nin Educational Psychology"); steam_plot_titled
        
# Preview ----
steam_preview <- 
    steam_plot +
    theme_minimal() +
    theme_transparent() +
    theme(panel.background = element_rect(fill = "#292A30", 
                                          color = "#292A30", 
                                          size = 1),
    panel.grid = element_blank(),
    axis.text = element_blank(),
    axis.title = element_blank()); steam_preview

# Titled Hex Sticker ----
sticker(steam_plot_titled, 
        package = "", 
        p_size = 10,
        s_x = 0.97, 
        s_y = 1.26, 
        s_width = 2.2, 
        s_height = 2.2,
        h_fill = "#292A30",
        h_color = "#293840",
        p_family = "odibee",
        filename = "static/img/course_hex.png")

# Untitled Hex Sticker ----
sticker(steam_plot, 
        package = "", 
        p_size = 10,
        s_x = 0.97, 
        s_y = 1.10, 
        s_width = 2.2, 
        s_height = 1.8,
        h_fill = "#292A30",
        h_color = "#293840",
        p_family = "odibee",
        filename = "static/img/hex.png")

# Slack Icon ----
sticker(steam_trans, 
        package = "", 
        s_x = 1, 
        s_y = 1.0, 
        s_width = 2.2, 
        s_height = 2.2,
        h_fill = "#292A30",
        h_color = "#293840",
        filename = "icon.png")

