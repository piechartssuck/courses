# Graphic for the bottom of the main page 

# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Remove objects ----
rm(list = ls())

# Libraries
library(tidyverse)
library(ggtext)
library(cowplot)
library(patchwork)
library(showtext)
library(showtextdb)
library(glue)
library(LaCroixColoR)
library(tidyverse)
library(RColorBrewer)
library(hexSticker)
library(showtext)
font_add_google("Big Shoulders Inline Text", "bigshoulders", bold.wt = 900)
showtext_auto()

#Read file
data <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-10-20/beer_awards.csv')

#Make some information
data1 <- data %>%
  filter(medal=="Gold") %>%
  group_by(year, state) %>%
  mutate(count = n()) %>%
  distinct(year, state, count) %>%
  filter(year > 1999) %>%
  filter(count > 5)

#Get toal gold medals
data2 <- data %>%
  filter(medal=="Gold" & year > 1999)%>%
  group_by(year) %>%
  mutate(count2 = n())%>%
  distinct(year, state, count2)

#Total medals
data3 <- data %>%
  filter(year >1999)%>%
  filter(medal=="Gold")

#Colors
getPalette <- colorRampPalette(brewer.pal(11, "Spectral"))
data1ColourCount = length(unique(data1$state))
data2ColourCount = length(unique(data2$state))




#Themes
#ggplot
p2 <- ggplot(data1, aes(x = year, y = count)) + 
  geom_col(aes(fill=state),
           alpha = 0.77,
           width = 0.9,
           show.legend = FALSE) + 
  scale_fill_manual(values = getPalette(data1ColourCount)) +
  coord_polar(theta = "y", start=0, clip="off")+
  scale_x_continuous(limits = c(1995, 2023), expand = c(0, 0)) +
  scale_y_continuous(limits = c(0, 80)) + 
  theme_void()

#Run it!
p2

p1 <- ggplot(data2, aes(x = year, 
                        y = count2, 
                        fill = factor(state))) + 
  geom_bar(aes(), 
           stat='identity',
           width = 0.9,
           alpha = 0.77,
           show.legend = FALSE) +
  scale_fill_manual(values = getPalette(data2ColourCount)) +
  scale_size_continuous(range = c(1, 15)) +
  scale_y_reverse(breaks=c(0,40,80), position = "right")+
  coord_flip()+
  theme_void()+
  theme(
    axis.text.x = element_blank(),
    axis.title.x = element_blank(),
    axis.line.x = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank())

p1

cur <- ggdraw(p2) + 
  draw_plot(p1, 
            x=-0.017, 
            y=0.55, 
            width = 0.54, 
            height = 0.3285); cur

# Save the various types of hex ----
## Sticker ----
cursticker <-
  sticker(cur, 
        package="Data Visualization", 
        p_size = 25, 
        p_x = 1,
        p_y = 1.41,
        s_x=1.0, 
        s_y=0.75, 
        s_width=1.2, 
        s_height=1.2,
        h_fill="#292A30",
        h_color="#293840",
        p_family = "bigshoulders",
        p_fontface = "bold",
        filename="static/img/course_hex.png",
        dpi = 600)

plot(cursticker)

cursticker

## Blogdown icon ----
curicon <- 
  sticker(cur, 
        package="", 
        s_x=1.0, 
        s_y=1.0, 
        s_width=1.3, 
        s_height=1.3,
        h_fill="#292A30",
        h_color="#293840",
        filename="assets/images/icon.png",
        dpi = 600)

plot(curicon)

# Slack hex ----
ggsave("static/img/slack_hex.png",
       cur,
       bg = "#293840",
       width = 4, 
       height = 4)

# init adapted from https://github.com/silaarts/TidyTuesday/blob/master/TidyTuesday_Beerawards.R