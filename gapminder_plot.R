# Graphic for the bottom of the main page 

# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Remove objects ----
rm(list = ls())

# Libraries ----
library(tidyverse)
library(dplyr)
library(ggiraph)
library(viridis)
library(wesanderson)
library(hrbrthemes)
library(htmlwidgets)
library(showtext)
font_add("Jost* Light", "Jost-300-Light.otf")
font_add("Jost* Medium", "Jost-500-Medium.otf")
font_add("Jost* Semi", "Jost-600-Semi.otf")
font_add("Jost* Semi Italic", "Jost-600-SemiItalic.otf")
font_add("Jost* Heavy", "Jost-800-Heavy.otf")
font_add("Jost* Black", "Jost-900-Black.otf")
showtext_auto()

# Note: All from the Gapminder data set https://www.gapminder.org/data/ ----

# Gender Equality Index (IDEA)
gendereq <- read_csv("gendereq_idea.csv") %>% 
                select("country", "2018") %>%
                rename(gendereq = "2018")

# Human Development Index
life <- read_csv("life_expectancy_years.csv") %>% 
                select("country", "2018") %>%
                rename(life = "2018")

pop <- read_csv("population_total.csv") %>% 
                      select("country", "2018") %>%
                      rename(pop = "2018")

# Combine the sets ----
gapminder_set <- gendereq %>%
                    inner_join(life, by = c("country")) %>%
                      inner_join(pop, by = c("country")) 

wesanderson <- rev(wes_palette("Rushmore1", 155, type = "continuous"))

# Interactive version ----
gapminder_plot <- gapminder_set %>%
      mutate_at(vars(gendereq),
            .funs = list(~. * 100)) %>%
      mutate(pop = round(pop/1000000,2)) %>%
      
  # Reorder countries to having big bubbles on top
  arrange(desc(pop)) %>%
  mutate(country = factor(country, country)) %>%
  
  # prepare text for tooltip
  mutate(tip = paste("As of 2018, ", country, 
                      " had a population of ", pop,
                      " million people, gender equality is rated at ", gendereq, 
                      " with a corresponding life expectancy rating of ", life, sep="")) %>%
  mutate(tip = str_wrap(tip, 20)) %>%
  # Classic ggplot
  ggplot(aes(x=life, 
              y=gendereq, 
              size = pop, 
              color = gendereq, 
              text=tip)) +
  geom_point_interactive(aes(tooltip = tip,
                             data_id = life),
                         alpha=0.7) +
  scale_size(range = c(1.4, 19), 
             name="Population (M)") +
  scale_color_gradientn(colors = wesanderson) + 
  theme_ipsum() +
  theme_void() +
  theme(legend.position="none")
  
# Define common tooltip aesthetics with CSS ----
tooltip_css <- "background-color: transparent;
                color: #FFFFFF;
                font-weight: 600;
                font-family: Jost* Semi;
                padding:10px;
                border-radius:5px;"

# turn ggplot interactive with ggiraph ----
# Print ----
gapminder_plot_interactive <- girafe(code = print(gapminder_plot),
    #   width = 7, 
       options = list(
         opts_toolbar(position = "bottomleft",
                      saveaspng = FALSE),
         opts_sizing(rescale = TRUE, 
                     width = 0.6)
       )
) %>%
  girafe_options(ggiraph::opts_tooltip(css = tooltip_css, 
                                       opacity = 0.90, 
                                       offx = 20, 
                                       offy = -10, 
                                       use_fill = TRUE,
                                       use_stroke = TRUE, 
                                       delay_mouseout = 1000), 
                 opts_hover(css = "fill:#428bca;
                                   stroke:#dfe3ee;
                                   stroke-width:4px;"),
                 opts_zoom(max = 10))

gapminder_plot_interactive

# gap_shortcode <- blogdown::shortcode_html(gapminder_plot_interactive)



# Save ----
ggsave(gapminder_plot,
       file="static/img/gapminder_plot.png", 
       bg="transparent",
       width = 297,
       height = 210,
       units = "mm")

saveWidget(gapminder_plot_interactive, 
           background = "transparent",
           file.path(normalizePath(dirname("layouts/shortcodes/gapminder_plot_interactive.html")),
                     basename("layouts/shortcodes/gapminder_plot_interactive.html")))

library(widgetframe)
gapminder_plot_interactive %>%
  frameWidget(width = "100%", height = "100%", options = )  %>%
  saveWidgetframe(file.path(normalizePath(dirname("layouts/shortcodes/gapminder_plot_interactive.html")),
                            basename("layouts/shortcodes/gapminder_plot_interactive.html")),
                  selfcontained = FALSE)
