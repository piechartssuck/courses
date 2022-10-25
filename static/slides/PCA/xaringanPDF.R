# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

remotes::install_github("rstudio/chromote")
# xaringan_to_pdf("pca.html")

library(renderthis)
source("https://git.io/xaringan2pdf")
renderthis::to_pdf("pca_flat.html",
                   complex_slides = TRUE, 
                   partial_slides = TRUE)
