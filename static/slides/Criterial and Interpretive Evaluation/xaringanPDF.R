# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

remotes::install_github("rstudio/chromote")
source("https://git.io/xaringan2pdf")
xaringan_to_pdf("Criterial-and-Interpretive-Eval.html")
