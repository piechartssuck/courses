library(renderthis)

# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

remotes::install_github("rstudio/chromote")

renderthis::to_pdf("Slides-Basics-flat.html",
                   complex_slides = TRUE, 
                   partial_slides = FALSE)
