# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

remotes::install_github("rstudio/chromote")

library(renderthis)
source("https://git.io/xaringan2pdf")

renderthis::to_pdf("overview-of-estimation-flat.html",
                   complex_slides = TRUE, 
                   partial_slides = TRUE)

renderthis::to_pdf("power-analysis-flat.html",
                   complex_slides = TRUE, 
                   partial_slides = TRUE)
