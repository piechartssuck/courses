# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

remotes::install_github("rstudio/chromote")
renderthis::to_pdf(from = "Criterial-and-Interpretive-Eval-flat.Rmd", complex_slides = TRUE)
