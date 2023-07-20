library(tidyverse)
library(lubridate)
library(ggiraph)
library(showtext)
library(knitr)
library(kableExtra)
library(here)
font_add("Jost* Medium", "Jost-500-Medium.otf")
font_add("Jost* Semi", "Jost-600-Semi.otf")
font_add("Jost* Bold", "Jost-700-Bold.otf")
font_add("Jost* Heavy", "Jost-800-Heavy.otf")
font_add("Jost* Black", "Jost-900-Black.otf")
showtext_auto()

data <- here::here("content", "reports", "y9q2files")
plots <- here::here("static", "graphics")
files <- here::here("static", "graphics")

# Define Quarter ----
QR = "Q2" 

# Set the working directory as source ----
# setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Define color palettes ----
ceo_colors <- c('#247079', '#2A363B', '#019875','#bf2929','#FECEA8','#C658B4','#3d98d3','#E84A5F','#99B898','#FF847C', '#0c485e','#966FD6','#03C5CC')
ceo_charge_colors <- c("#917898", "#e7d5c0", "#e6c48d", "#b77d5c","#68a78d", "#398eb2", "#f5a3b7", "#d8b9aa")
crdeb_colors  <- c("#A15651", "#DA2027", "#881829", "#422420", "#DEA795", "#D693A3")
crrf_colors <- c("#624FA1", "#a1624f", "#4fa162", "#4f8ea1", "#4f65a1", "#a18b4f", "#A54974", "#4e8584")
ids_colors <- c("#476d4f", "#c0d095", "#007777", "#83adb5", "#454545", "#788130", "#c7b85f", "#196874")

# Order months ----
ordered_months <- c("January","February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")

# Get months ----
if (QR == "Q1") QUARTER = c("Jul", "Aug", "Sep") else 
  if (QR == "Q2") QUARTER = c("Oct", "Nov", "Dec") else 
    if (QR == "Q3") QUARTER = c("Jan", "Feb", "Mar") else 
      QUARTER = c("Apr", "May", "Jun")


# Construct a tooltip----
tooltip_css <- "background-color: #f7f7f7;
                color: #181818;
                font-weight: 600;
                font-family: Arial, Helvetica, sans-serif;
                padding:10px;
                border-radius:5px;"

read_csv(here(data,"dashboard.csv")) %>%
  mutate_all(as.character) %>%
  replace(is.na(.), "")   %>%
  kable(align = "llcccccc") %>%
  row_spec(1:4,
           color = "#4682b4",
           bold = TRUE) %>%
  row_spec(6:12,
           color = "#ff6347",
           bold = TRUE) %>%
  row_spec(14:18,
           color = "#4682b4",
           bold = TRUE) %>%
  row_spec(20:22,
           color = "#ff6347",
           bold = TRUE) %>%
  row_spec(24:26,
           color = "#4682b4",
           bold = TRUE) %>%
  row_spec(28:29,
           color = "#ff6347",
           bold = TRUE) %>%
  column_spec(8, 
              width = "5em", 
              bold = TRUE, 
              color = "#4f5b66", 
              background = "#9adaf6")
