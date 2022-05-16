# Library
library(streamgraph)
library(htmlwidgets)
library(webshot)

# Create data ----
data <- 
  data.frame(
  year=rep(seq(1985,2022) , each=10),
  name=rep(letters[1:10], 38),
  value=sample(seq(0,1,0.0001), 380),
  stringsAsFactors = FALSE
  )

# Basic steamgraph ----
set.seed(123)
streamgraph(data, 
            key = "name", 
            value = "value", 
            date = "year", 
            height = "800px", 
            width = "4000px",
            interactive = FALSE,
            order = "reverse") %>%
  sg_axis_y(0) %>% 
  sg_axis_x(0,NA) %>%
  sg_fill_tableau("cyclic") %>%
  saveWidget(file = here::here("static", "img", "steamplot.html"))

webshot(here::here("static", "img", "steamplot.html"),
        file = here::here("static", "img", "steamplot.pdf"), 
        delay = 2)
