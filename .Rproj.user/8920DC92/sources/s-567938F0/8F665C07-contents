# Set the working directory as source ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

pagedown::chrome_print("Intro-to-PE.html")
  
source("https://git.io/xaringan2pdf")
xaringan_to_pdf("Intro-to-PE.html")

xaringan::decktape("Intro-to-PE.html","Intro-to-PE.pdf")
