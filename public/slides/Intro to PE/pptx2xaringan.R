setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

library(slidex) #devtools::install_github("datalorax/slidex")
library(here)

loc <- here::here("static", "slides", "IntroToPE", "Intro to PE.pptx")

convert_pptx(path = loc, author = "Abhik Roy")
