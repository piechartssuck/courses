# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# library(xaringanBuilder)
# build_pdf("Slides-Week-1.Rmd")
# build_pdf("Slides-Week-1.html")

# pagedown::chrome_print("Slides-Week-7a.Rmd")
# pagedown::chrome_print("Slides-Week-1.html")
# pagedown::chrome_print("Slides-Week-1R.Rmd")
# xaringan::decktape("Slides-Week-7a.html", "Slides-Week-7a.pdf")

remotes::install_github("rstudio/chromote")
source("https://git.io/xaringan2pdf")
xaringan_to_pdf("Slides-Week-9-flat.html")
