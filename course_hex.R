# Graphic for the bottom of the pw_plot page 

# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Remove objects ----
# rm(list = ls())

# Libraries
library(tidyverse)
library(hexSticker)
library(ggfx)
library(wesanderson)
library(showtext)
library(patchwork)
font_add("cfont", "RigSolid-BoldReverse.ttf")
showtext_auto()

# Get data ----
pwdata <- 
  readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-01-14/passwords.csv') %>% 
  filter(!is.na(password))

# Wrangle ----
df_pw_time <-
  pwdata %>% 
  mutate(
    #value = offline_crack_sec,
    time = case_when(
      time_unit == "seconds" ~ value,
      time_unit == "minutes" ~ value * 60,
      time_unit == "hours" ~ value * 60 * 60,
      time_unit == "days" ~ value * 60 * 24,
      time_unit == "weeks" ~ value * 60 * 24 * 7,
      time_unit == "months" ~ value * 60 * 24 * 30,
      time_unit == "years" ~ value * 60 * 24 * 365,
      TRUE ~ NA_real_
    )
  ); df_pw_time


# Hex base ----
set.seed(123)

plus <- 200

pw_plot_data <-
  df_pw_time %>% 
  mutate(time = time + plus) %>% 
  add_row(rank = 501, time = 1); pw_plot_data

pw_plot <- 
  pw_plot_data %>% 
  mutate(category = factor(category)) %>% 
  top_n(50) %>%
  ggplot(aes(rank, time, color = category)) +
    with_inner_glow(
    geom_segment(aes(x = rank, xend = rank, 
                     y = 0, yend = time), 
                 size = 0.2,
                 show.legend = FALSE),
    sigma = 1.42
      ) +
  geom_rect(aes(xmin = 1, xmax = 501, 
                ymin = 0, ymax = plus), 
            fill = "#292A30", 
            color = "#292A30",
            show.legend = FALSE) + 
      with_kernel(
      with_bloom(
    with_inner_glow(
      geom_point(aes(size = time * 0.2),
                 show.legend = FALSE),
      sigma = 1
        )
      ),
    kernel = "Gaussian:0x1"
    )+
  coord_polar(start = pi / 4) + 
  scale_y_log10(expand = c(0, 0)) +
  # scale_color_manual(values = lacroix_palette("Berry",
  #                                            type = "continuous", 
  #                                            n = 10)) +
  scale_color_manual(values = wes_palette("Zissou1", 10, type = "continuous")) +
  scale_size(range = c(1, 2), 
             limits = c(plus, max(pw_plot_data$time)), 
             guide = "none") + 
  theme_void()
#  theme(plot.margin = margin(-5, -18, -7, -18, "lines"))

pw_plot

implode <- function(x, factor = 0.5) {
  vp <- magick::image_read(get_viewport_area(x))
  vp <- magick::image_implode(vp, factor)
  set_viewport_area(x, as.raster(vp, native = TRUE))
}

# Hex base with title ----
pw_plot_titled <- 
  pw_plot +
  ggtitle("Mixing\nResearch\nMethods") +
  theme(plot.title = element_text(size = 28,
                                  family = "cfont", 
                                  color = "#f7f7f7", 
                                  hjust = 0.512,
                                  vjust = -15.82,
                                  lineheight = 0.4),
        plot.title.position = "plot"); pw_plot_titled

# Preview ----
pw_preview <- 
  pw_plot_titled +
  theme(panel.background = element_rect(fill = "#292A30", 
                                        color = "#292A30", 
                                        size = 1),
        plot.background = element_rect(fill = "#292A30"),
        panel.grid = element_blank(),
        axis.text = element_blank(),
        axis.title = element_blank()); pw_preview

# Titled Hex Sticker ----
sticker(pw_plot_titled, 
        package = "", 
        p_size = 10,
        s_x = 1, 
        s_y = 1.25, 
        s_width = 2.7, 
        s_height = 2.7,
        h_fill = "#292A30",
        h_color = "#293840",
        p_family = "cfont",
        filename = "static/img/course_hex.png")

# Untitled Hex Sticker ----
sticker(pw_plot, 
        package = "", 
        p_size = 12,
        s_x = 1, 
        s_y = 1,
        s_width = 1.955, 
        s_height = 1.955,
        h_fill = "#292A30",
        h_color = "#293840",
        p_family = "cfont",
        filename = "static/img/hex.png")

# Slack Icon ----
sticker(pw_plot, 
        package = "", 
        s_x = 1, 
        s_y = 1,
        s_width = 1.955, 
        s_height = 1.955,
        h_fill = "#292A30",
        h_color = "#293840",
        filename = "icon.png")


pw_plot_full <- 
  pw_plot_data %>% 
  mutate(category = factor(category)) %>% 
  top_n(50) %>%
  ggplot(aes(rank, time, color = category)) +
  with_inner_glow(
    geom_segment(aes(x = rank, xend = rank, 
                     y = 0, yend = time), 
                 size = 2,
                 alpha = 0.7,
                 show.legend = FALSE),
    sigma = 2.42
  ) +
  geom_rect(aes(xmin = 1, xmax = 501, 
                ymin = 0, ymax = plus), 
            fill = "#292A30", 
            color = "#292A30",
            show.legend = FALSE) + 
  with_kernel(
    with_bloom(
      with_inner_glow(
        geom_point(aes(size = time),
                   alpha = 0.90,
                   show.legend = FALSE),
        sigma = 2
      )
    ),
    kernel = "Gaussian:0x1"
  )+
  coord_polar(start = pi / 4) + 
  scale_y_log10(expand = c(0, 0)) +
  # scale_color_manual(values = lacroix_palette("Berry",
  #                                            type = "continuous", 
  #                                            n = 10)) +
  scale_color_manual(values = wes_palette("Zissou1", 10, type = "continuous")) +
  scale_size(range = c(8, 13), 
             limits = c(plus, max(pw_plot_data$time)), 
             guide = "none") + 
  theme_void(); pw_plot_full
  
ggsave("slack_hex.png",
       pw_plot_full,
       height = 10, 
       width = 10,
       bg = "#292A30")

# https://github.com/Z3tt/TidyTuesday/tree/master/R/2020_03_Passwords.Rmd
