# Graphic for the bottom of the main page 

# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Remove objects ----
# rm(list = ls())

# Libraries
library(tidyverse)
library(magrittr)
library(pracma)
library(wesanderson)
library(ggfx)
library(showtext)
font_add("goudy", "GoudyBookletter1911-Regular.ttf")
showtext_auto()

# Get data ----
tuesdata <-
  tidytuesdayR::tt_load('2022-03-08')

# Wrangle ----
dsa <-
tuesdata$erasmus |>
  rename(receiving = receiving_country_code,
         shipping = sending_country_code)

part_three <-
  dsa |>
  mutate(filter=ifelse(receiving == shipping,
                       "within_country",
                       "abroad")) |>
  filter(filter == "abroad") |>
  group_by(receiving) |>
  count() |>
  filter(n < 1000) |>
  arrange(-n) |>
  head(3) |>
  rename(participants_total = n) |>
  arrange(receiving) |>
  cbind(xend = c(5,10,24)) |>
  ungroup()

max_counts <-
  dsa |>
  merge(part_three, by = "receiving") |>
  mutate(mobility_start_month_b = as.Date(paste0(mobility_start_month,"-01"))) |>
  group_by(mobility_start_month,
           mobility_start_month_b,
           shipping,
           xend,
           participants_total,
           receiving) |>
  summarise(participants = sum(participants)) |>
  arrange(mobility_start_month_b) |>
  tibble() %>%
  cbind(tibble(x = seq(0, 20, len = nrow(.))) |>
          mutate(z = (0.9*(x*1i))) |>
          mutate(fa = (abs(zeta(z)))^1/2)) |>
  mutate(yend = case_when(
    xend == 5~1.25,
    xend == 10~-0.8,
    xend == 24~-0.5)) |>
  mutate(count = 1:n()) |>
  group_by(receiving, mobility_start_month) |>
  summarise(peak = sum(participants)) |>
  arrange(receiving, -peak) |>
  group_by(receiving) |>
  mutate(count = 1:n()) |>
  filter(count == 1) |>
  select(!(count)); max_counts

# Define palette ----
pal <-
  c("#eb6b6b", "#8ad9d3", "#fda939")

# scales::show_col(pal)

# Hex base ----
set.seed(123)
s_plot <- 
  dsa |>
  merge(part_three, by = "receiving") |>
  mutate(mobility_start_month_b = as.Date(paste0(mobility_start_month,"-01"))) |>
  group_by(mobility_start_month,
           mobility_start_month_b,
           shipping,
           xend,
           participants_total,
           receiving) |>
  summarise(participants = sum(participants)) |>
  arrange(mobility_start_month_b) |>
  tibble() %>%
  cbind(tibble(x = seq(0, 20, len = nrow(.))) |>
          mutate(z=(0.66*(x*1i))) |>
          mutate(fa=(abs(zeta(z)))^1/2)) |>
  mutate(yend = case_when(xend == 5~1.45,
                          xend == 10~-0.8,
                          xend == 24~-0.15)) |>
  mutate(count = 1:n()) |>
  # mutate(label=ifelse(count==1|count==1087,mobility_start_month,NA)) |>
  # mutate(segment_x=ifelse(is.na(label),NA,x),segment_y=ifelse(is.na(label),NA,fa)) |>
  merge(max_counts,
        by = c("receiving", "mobility_start_month"),
        all.x = TRUE) |>
  group_by(peak) |>
  mutate(count1=1:n()) |>
  mutate(peak = ifelse(count1 == 1, peak, NA),
         x_unif = runif(n(), 0, 0.5),
         fa_unif = runif(n(), 0, 0.5)) |>
  mutate(x = x+x_unif,
         fa = fa+fa_unif) |>
  arrange(desc(receiving)) |>
  ungroup() |>
  ggplot() +
  # annotate("rect", fill = "#292A30",
  #          xmin = -Inf, xmax = Inf,
  #          ymin = -Inf, ymax = Inf) +
  #  geom_curve(aes(x=x,y=fa,xend=xend,yend=yend,color=receiving),
  #           alpha = 0.1,
  #           curvature = 0.1) +
  as_reference(geom_point(aes(x = x, y = fa,
                              fill = receiving,
                              size = participants),
                          shape = 21,
                          alpha = 0.95,
                          color = "#292A30",
                          stroke = 0),
               'dot') +
  with_interpolate(
    geom_smooth(aes(x = x, y = fa,
                    #  xend = xend,
                    #  yend = yend,
                    color = receiving),
                method = "glm",
                formula = y ~ splines::bs(x, 3),
                se = FALSE,
                span = 0.7,
                size = 0.2),
    bg_layer = 'dot',
    src_percent = 90,
    bg_percent = 60) +
  scale_size(range = c(0.3,1.2)) +
  scale_fill_manual(values = pal) +
  scale_color_manual(values = pal) +
  theme_minimal() +
  theme(axis.title = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        legend.position = "none",
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        panel.background = element_blank()) +
  theme(plot.title = element_text(size = 28,
                                  family = "goudy", 
                                  color = "#f7f7f7", 
                                  hjust = 0.25,
                                  vjust = -2.0,
                                  lineheight = 0.4),
        plot.title.position = "plot"); s_plot 

# Hex base with title ----
s_plot_titled <- 
  s_plot +
  ggtitle("Survey Research\nMethods"); s_plot_titled

# Preview ----
s_preview <- 
  s_plot_titled +
  theme(panel.background = element_rect(fill = "#292A30", 
                                        color = "#292A30", 
                                        size = 1),
        plot.background = element_rect(fill = "#292A30"),
        panel.grid = element_blank(),
        axis.text = element_blank(),
        axis.title = element_blank()); s_preview

# Titled Hex Sticker ----
sticker(s_plot_titled, 
        package = "", 
        p_size = 10,
        s_x = 0.98, 
        s_y = 1.15, 
        s_width = 2.2, 
        s_height = 1.4,
        h_fill = "#292A30",
        h_color = "#293840",
        p_family = "goudy",
        filename = "static/img/course_hex.png")

# Untitled Hex Sticker ----
sticker(s_plot, 
        package = "", 
        p_size = 10,
        s_x = 0.98, 
        s_y = 0.91, 
        s_width = 2.2, 
        s_height = 0.92,
        h_fill = "#292A30",
        h_color = "#293840",
        p_family = "goudy",
        filename = "static/img/hex.png")

# Slack Icon ----
sticker(s_plot, 
        package = "", 
        s_x = 1, 
        s_y = 1.0, 
        s_width = 2.2, 
        s_height = 0.92,
        h_fill = "#292A30",
        h_color = "#293840",
        filename = "icon.png")


s_plot_full <- 
  s_plot +
  with_interpolate(
    geom_smooth(aes(x = x, y = fa,
                    #  xend = xend,
                    #  yend = yend,
                    color = receiving),
                method = "glm",
                formula = y ~ splines::bs(x, 3),
                se = FALSE,
                span = 0.7),
    bg_layer = 'dot',
    src_percent = 90,
    bg_percent = 40) +
  scale_size(range = c(2,8)) +
  theme(aspect.ratio = 1/3); s_plot_full
  
ggsave("slack_hex.png",
       s_plot_full,
       height = 10, 
       width = 10,
       bg = "#292A30")

# based on https://github.com/SheViz-2021/TidyTuesday/blob/main/TidyTuesday_Week28.Rmd