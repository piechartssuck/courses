library(tidyverse)
library(nbastatR)
library(lubridate)
library(hrbrthemes)

# Sys.setenv("VROOM_CONNECTION_SIZE" = 131072 * 2)

nba_data <- 
   nbastatR::game_logs(seasons = 1991)

mjplot <-
ggplot(nba_data) + 
  geom_point(aes(dateGame, pts), 
             alpha = 0.02, 
             color = '#80FFDB',
             size = 0.025) +
  geom_line(data=subset(nba_data, 
                        namePlayer=='Michael Jordan'), 
            aes(dateGame, pts), 
            alpha = 0.2,
            color = '#80FFDB', 
            size = 0.25) +
  geom_point(data=subset(nba_data, 
                         namePlayer=='Michael Jordan'), 
             aes(dateGame, pts), 
             alpha = 0.2, 
             color = '#80FFDB',
             size = 0.2) +
  theme_void() + 
  theme_ft_rc(axis_text_size = 0,
              axis_title_size = 0,
              plot_title_size = 0,
              subtitle_size = 0,
              strip_text_size = 0) +
  theme(plot.background = element_rect(fill='#282A36'),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()); mjplot

png(file = "static/img/mjplot.png",
    bg = "transparent",
    res = 300,
    width = 4.264, 
    height = 2.00,
    units = "in")

mjplot

dev.off()

# Idea from https://github.com/elartedeldato/TidyTuesday/blob/main/NBA_Top_Players_TidyTuesday_2022.R
