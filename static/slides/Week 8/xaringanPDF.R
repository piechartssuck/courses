# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

remotes::install_github("rstudio/chromote")

renderthis::to_pdf(from = "Slides-Week-8-flat.Rmd", complex_slides = TRUE)

### perl
knitr::purl("Slides-Week-8-flat.Rmd")

