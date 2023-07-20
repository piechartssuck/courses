library(tidyverse)
library(lubridate)
library(ggiraph)
library(showtext)
library(here)
font_add("Jost* Medium", "Jost-500-Medium.otf")
font_add("Jost* Semi", "Jost-600-Semi.otf")
font_add("Jost* Bold", "Jost-700-Bold.otf")
font_add("Jost* Heavy", "Jost-800-Heavy.otf")
font_add("Jost* Black", "Jost-900-Black.otf")
showtext_auto()

data <- here::here("content", "reports", "y9q2files")
plots <- here::here("static", "graphics")

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

# CEO ----
ceo <- read_csv(here(data,"ceo.csv"))  %>%
  mutate(Category = str_trim(Category)) %>%
  mutate(Category = str_squish(Category)) %>%
  mutate(`Charge Name` = str_squish(`Charge Name`)) %>%
  rowid_to_column() %>%
  select(rowid, Category, `Charge Name`, `Purchase Date`) %>%
  gather(key, value, -Category, -`Charge Name`, -`Purchase Date`) %>%
  mutate(purchase = mdy_hm(`Purchase Date`)) %>%
  mutate(Month = month(purchase, label = TRUE)) %>%
  select(Month, Category, `Charge Name`) %>%
  filter(Month %in% QUARTER) 

# CEO Cat flat ----
cat_counts <- ceo %>%
  count(Month, Category) %>%
  mutate(nn = sum(n)) %>%
  mutate(prop = (n / nn)*100) %>%
  mutate_if(is.numeric, round, 0) %>% 
  rename(frequency = n) %>%
  rename(agg = nn) %>%
  mutate(Total = paste0(Category," (",prop,"%)")) %>%
  na.omit() %>%
  ungroup() %>%
  mutate(Month = case_when(
    Month == "Jan" ~ "January",
    Month == "Feb" ~ "February",
    Month == "Mar" ~ "March",
    Month == "Apr" ~ "April",
    Month == "May" ~ "May",
    Month == "Jun" ~ "June",
    Month == "Jul" ~ "July",
    Month == "Aug" ~ "August",
    Month == "Sep" ~ "September",
    Month == "Oct" ~ "October",
    Month == "Nov" ~ "November",
    Month == "Dec" ~ "December"
    ) 
  ) %>%
  mutate(Month = factor(Month, levels = ordered_months)) %>%
  mutate(tip = paste0(Category," in ", Month, " were " , prop,"% of all services this quarter")) %>%
  arrange(Month) %>%
  filter(!frequency == 0) %>%
  filter(!str_detect(Category, "Total")) %>%
  mutate(tip = str_wrap(tip, 10))

ceo_plot_cat <- 
  ggplot(cat_counts, aes(x = Month, 
                         y = frequency)) +
  geom_bar_interactive(aes(fill = Category,
                           tooltip = tip,
                           data_id = Category),
           stat="identity", 
           size = 0.8, 
           width = 0.95, 
           color = "#FFFFFF",
           position = position_dodge2(0.9,
                                      preserve = "single")) +
  geom_label(
    aes(label = frequency,
        group=Category),
    position = position_dodge2(0.95,
                               preserve = "single"),
    vjust = 0.5, 
    size = 5.5,
    family = "Jost* Medium", 
    color ="#011f4b"
  ) +
  theme(plot.title = ggtext::element_textbox_simple(size = 26,
                                                    family = "Jost* Black", 
                                                    halign = 0.31,  
                                                    valign = 0.5),
        legend.position = c(0.75,0.8),
        legend.key = element_blank(),
        legend.key.size = unit(1.5, 'lines'),
        legend.text = element_text(size = 12, 
                                   family = "Jost* Semi", 
                                   color = "#2c2f33"),
        legend.title = element_blank(),
        legend.title.align = 0.5,
        legend.spacing.x = unit(0.5, "cm"), 
        legend.spacing.y = unit(0.5, "cm"),
        legend.background = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        axis.ticks = element_blank(),
        axis.text.y = element_blank(),
        axis.text.x = element_text(size = 15, 
                                   family = "Jost* Bold", 
                                   color = "#363863"),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        panel.background = element_rect(fill = "transparent",color = NA),
        plot.background = element_rect(fill = "transparent",color = NA),
        panel.border = element_blank()) +
  ggtitle(
    paste0(
      "<span style = 'color:#2c2f33'>**By the Numbers:**</span> ",
      "<span style='color:#03396c'>**Community Engagement & Outreach**</span>"
    )
  ) +
  scale_fill_manual(values = ceo_colors) 

ceo_plot_cat 

ggsave(
  ceo_plot_cat,
  file=here(plots,"ceo_plot_cat.pdf"), 
  bg="transparent",
  device = cairo_pdf,
  width = 297,
  height = 210,
  units = "mm"
)

# CEO Cat int ----
girafe(code = print(ceo_plot_cat + guides(fill=FALSE)),
       width = 7, 
       options = list(
         opts_toolbar(position = "bottomleft"),
         opts_sizing(rescale = TRUE, 
                     width = 0.8)
       )
) %>%
  girafe_options(ggiraph::opts_tooltip(css = tooltip_css, 
                                       opacity = 0.95, 
                                       offx = 20, 
                                       offy = -10, 
                                       use_stroke = TRUE, 
                                       delay_mouseout = 1000), 
                 opts_hover(css = "fill:#0b4069;
                                   stroke:#dfe3ee;
                                   stroke-width:0px;"),
                 opts_zoom(max = 10))

# CEO Charge flat ----
charge_counts <- ceo %>%
  filter(Category == "Products") %>%
  rename(charge = "Charge Name") %>%
  mutate(charge = case_when(
    str_detect(charge, "Consultation") ~ "Consultation",
    str_detect(charge, "Project Development") ~ "Project Development",
    str_detect(charge, "Project Implementation") ~ "Project Implementation",
    str_detect(charge, "Ideas on Deck") ~ "Ideas on Deck",
    str_detect(charge, "Translational and Dissemination") ~ "Translational and Dissemination",
    str_detect(charge, "WV Project ECHO Operations and Planning") ~ "WV Project ECHO Operations and Planning",
    str_detect(charge, "WV Project ECHO Session") ~ "WV Project ECHO Session",
    str_detect(charge, "Project Accepted by the WVPBRN") ~ "Project Accepted by the WVPBRN",
    str_detect(charge, "Project Reviewed by WVPBRN Protocol Review") ~ "Project Reviewed by WVPBRN Protocol Review",
    str_detect(charge, "WVPBRN Engagement and Training") ~ "WVPBRN Engagement and Training",
    TRUE ~ as.character(charge)
    )
  ) %>%
  count(Month, charge) %>%
  mutate(nn = sum(n)) %>%
  mutate(prop = (n / nn)*100) %>%
  mutate_if(is.numeric, round, 0) %>% 
  rename(frequency = n) %>%
  rename(agg = nn) %>%
  mutate(Total = paste0(charge," (",prop,"%)")) %>%
  na.omit() %>%
  ungroup() %>%
  mutate(Month = case_when(
    Month == "Jan" ~ "January",
    Month == "Feb" ~ "February",
    Month == "Mar" ~ "March",
    Month == "Apr" ~ "April",
    Month == "May" ~ "May",
    Month == "Jun" ~ "June",
    Month == "Jul" ~ "July",
    Month == "Aug" ~ "August",
    Month == "Sep" ~ "September",
    Month == "Oct" ~ "October",
    Month == "Nov" ~ "November",
    Month == "Dec" ~ "December"
  ) 
  ) %>%
  mutate(Month = factor(Month, levels = ordered_months)) %>%
  mutate(tip = paste0(charge," charges in ", Month, " were " , prop,"% of all services this quarter")) %>%
arrange(Month) %>%
  filter(!frequency == 0) %>%
  filter(!str_detect(charge, "Total")) %>%
  mutate(tip = str_wrap(tip, 10))

ceo_plot_charge <- 
  ggplot(charge_counts, aes(x = Month, 
                            y = frequency)) +
  geom_bar_interactive(aes(fill = charge,
               tooltip = tip,
               data_id = charge),
           stat="identity", 
           size = 0.8, 
           width = 0.7, 
           color = "#FFFFFF",
           position = position_dodge2(0.7,
                                     preserve = "single")) +
  geom_label(
    aes(label = frequency,
        group=charge),
    position = position_dodge2(0.7,
                               preserve = "single"),
    vjust = 0.5, 
    size = 5.5,
    family = "Jost* Medium", 
    color ="#011f4b"
  ) +
  theme(plot.title = ggtext::element_textbox_simple(size = 26,
                                                    family = "Jost* Black", 
                                                    halign = 1,  
                                                    valign = 0.5),
        legend.position = c(0.30,0.8),
        legend.key = element_blank(),
        legend.key.size = unit(1.5, 'lines'),
        legend.text = element_text(size=15, 
                                   family = "Jost* Semi", 
                                   color = "#212121"),
        legend.title = element_blank(),
        legend.title.align = 0.5,
        legend.spacing.x = unit(0.5, "cm"), 
        legend.spacing.y = unit(0.5, "cm"),
        legend.background = element_blank(),
        panel.background = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        axis.ticks = element_blank(),
        axis.text.y = element_blank(),
        axis.text.x = element_text(size=15, 
                                   family = "Jost* Bold", 
                                   color = "#48466D"),
        panel.border = element_blank(),
        panel.grid.major.x = element_blank(), 
        panel.grid.minor = element_blank()) +
  ggtitle(
    paste0(
      "<span style='color:#2c2f33'>**By the Numbers:**</span>&#8202;",
      "<span style='color:#fa405c'>**Products**</span>&#8202;",
      "<span style='color:#03396c'>**of Community Engagement & Outreach**</span>"
    )
  ) +
  scale_fill_manual(values = ceo_charge_colors) +
  guides(fill = guide_legend(col = 1)) 

ceo_plot_charge 

ggsave(
  ceo_plot_charge,
  file="ceo_plot_charge.pdf", 
  bg="transparent",
  device = cairo_pdf,
  width = 297,
  height = 210,
  units = "mm"
)

# CEO Charge int ----
girafe(code = print(ceo_plot_charge + guides(fill=FALSE)),
       width = 7, 
       options = list(
         opts_toolbar(position = "bottomleft"),
         opts_sizing(rescale = TRUE, 
                     width = 0.8)
       )
) %>%
  girafe_options(ggiraph::opts_tooltip(css = tooltip_css, 
                                       opacity = 0.95, 
                                       offx = 20, 
                                       offy = -10, 
                                       use_stroke = TRUE, 
                                       delay_mouseout = 1000), 
                 opts_hover(css = "fill:#0b4069;
                                   stroke:#dfe3ee;
                                   stroke-width:0px;"),
                 opts_zoom(max = 10))

# CRDEB flat ----
crdeb <- read_csv(here(data,"core_data.csv")) %>% 
  filter(`Core Name` == "WVCTSI Clinical Research Design, Epidemiology and Biostatistics Core") %>%
  mutate(purchase = mdy_hm(`Purchase Date`)) %>%
  mutate(Month = month(purchase, label = TRUE)) %>%
  select(Month, `Core Name`, Category) %>%
  filter(Month %in% QUARTER) %>%
  mutate(`Core Name` = str_replace(`Core Name`, "WVCTSI ", "")) %>% 
  replace(.=="Services", "Other Services")  %>%
  count(Month, Category) %>%
  mutate(nn = sum(n)) %>%
  mutate(prop = (n / nn)*100) %>%
  mutate_if(is.numeric, round, 0) %>% 
  rename(frequency = n) %>%
  rename(agg = nn) %>%
  mutate(Total = paste0(Category," (",prop,"%)")) %>%
  droplevels() %>%
  mutate(Month = case_when(
    Month == "Jan" ~ "January",
    Month == "Feb" ~ "February",
    Month == "Mar" ~ "March",
    Month == "Apr" ~ "April",
    Month == "May" ~ "May",
    Month == "Jun" ~ "June",
    Month == "Jul" ~ "July",
    Month == "Aug" ~ "August",
    Month == "Sep" ~ "September",
    Month == "Oct" ~ "October",
    Month == "Nov" ~ "November",
    Month == "Dec" ~ "December"
  ) 
  ) %>%
  mutate(Month = factor(Month, levels = ordered_months)) %>%
  mutate(tip = case_when(
    str_detect(Category, "Services") ~ paste0(Category," were provided ", prop,"% of the time in ", Month),
    TRUE ~ paste0(Category," was provided ", prop,"% of the time in ", Month)
    )
  ) %>%
  arrange(Month) %>%
  filter(!frequency == 0) %>%
  filter(!str_detect(Category, "Total")) %>%
  mutate(tip = str_wrap(tip, 10)); crdeb


crdebp <- ggplot(crdeb,
                 aes(x = Month, y = frequency)) +
  geom_bar_interactive(aes(fill = Category,
               tooltip = tip,
               data_id = Category), 
           stat="identity", 
           size = 0.8, 
           width = 0.6, 
           color = "#FFFFFF",
           position=position_dodge2(width = 0.6,
                                    preserve = "single")) +
  geom_label(
    aes(x = Month, 
        y = frequency, 
        label = frequency, 
        group = Category),
    position = position_dodge2(width = 0.6, 
                               preserve = "single"),
    vjust = 0.5, 
    size = 5.5,
    family = "Jost* Medium", 
    color ="#011f4b"
  ) +
  theme_minimal()+
  theme(plot.title = ggtext::element_textbox_simple(size = 26,
                                                    family = "Jost* Black", 
                                                    halign = 1,  
                                                    valign = 0.5),
        legend.position ="bottom",
        legend.direction = 'horizontal',
        legend.key.size = unit(1.5, 'lines'),
        legend.text = element_text(size=15, 
                                   family = "Jost* Bold", 
                                   color = "#212121"),
        legend.title = element_blank(),
        legend.title.align = 0.5,
        legend.spacing.x = unit(0.5, "cm"), 
        legend.spacing.y = unit(0.5, "cm"),
        legend.background = element_blank(),
        panel.background = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        axis.ticks = element_blank(),
        axis.text.y = element_blank(),
        axis.text.x = element_text(size=15, 
                                   family = "Jost* Bold", 
                                   color = "#561d18"),
        panel.border = element_blank(),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank()) + 
  ggtitle(
    paste0(
      "<span style='color:#2c2f33'>**By the Numbers:**</span> ",
      "<span style='color:#a32022'>**Clinical Research Design, Epidemiology & Biostatistics Core Services**</span>"
    )
  ) +
  scale_fill_manual(values = crdeb_colors ) 

crdebp

ggsave(
  crdebp,
  file=here(plots, "crdeb.pdf"), 
  bg="transparent",
  device = cairo_pdf,
  width = 297,
  height = 210,
  units = "mm"
)

# CRDEB int ----
girafe(code = print(crdebp + guides(fill=FALSE)),
       width = 7, 
       options = list(
         opts_toolbar(position = "bottomleft"),
         opts_sizing(rescale = TRUE, 
                     width = 0.8)
       )
) %>%
  girafe_options(ggiraph::opts_tooltip(css = tooltip_css, 
                                       opacity = 0.95, 
                                       offx = 20, 
                                       offy = -10, 
                                       use_stroke = TRUE, 
                                       delay_mouseout = 1000), 
                 opts_hover(css = "fill:#0b4069;
                                   stroke:#dfe3ee;
                                   stroke-width:0px;"),
                 opts_zoom(max = 10))

# CRRF flat ----
crrf <- read_csv(here(data,"core_data.csv")) %>% 
  filter(`Core Name` == "WVCTSI Clinical Research Resources Facilities") %>%
  mutate(purchase = mdy_hm(`Purchase Date`)) %>%
  mutate(Month = month(purchase, label = TRUE)) %>%
  select(Month, `Core Name`, Category) %>%
  filter(Month %in% QUARTER) %>%
  mutate(`Core Name` = str_replace(`Core Name`, "WVCTSI ", "")) %>% 
  replace(.=="Services", "Other Services")  %>%
  count(Month, Category) %>%
  mutate(nn = sum(n)) %>%
  mutate(prop = (n / nn)*100) %>%
  mutate_if(is.numeric, round, 0) %>% 
  rename(frequency = n) %>%
  rename(agg = nn) %>%
  mutate(Total = paste0(Category," (",prop,"%)")) %>%
  droplevels() %>%
  mutate(Month = case_when(
    Month == "Jan" ~ "January",
    Month == "Feb" ~ "February",
    Month == "Mar" ~ "March",
    Month == "Apr" ~ "April",
    Month == "May" ~ "May",
    Month == "Jun" ~ "June",
    Month == "Jul" ~ "July",
    Month == "Aug" ~ "August",
    Month == "Sep" ~ "September",
    Month == "Oct" ~ "October",
    Month == "Nov" ~ "November",
    Month == "Dec" ~ "December"
    ) 
  ) %>%
  mutate(Month = factor(Month, levels = ordered_months)) %>%
  mutate(tip = case_when(
    str_detect(Category, "Services") ~ paste0(Category," were provided ", prop,"% of the time in ", Month),
    TRUE ~ paste0(Category," was provided ", prop,"% of the time in ", Month)
  )
  ) %>%
  arrange(Month) %>%
  filter(!frequency == 0) %>%
  filter(!str_detect(Category, "Total")) %>%
  mutate(tip = str_wrap(tip, 10)); crrf

crrfp <-   
  ggplot(crrf, aes(x = Month, y = frequency)) +
  geom_bar_interactive(aes(fill = Category,
                           tooltip = tip,
                           data_id = Category), 
                       stat="identity", 
                       size = 0.8, 
                       width = 0.5, 
                       color = "#FFFFFF",
                       position=position_dodge2(width = 0.5,
                                                preserve = "single")) +
  geom_label(
    aes(x = Month, 
        y = frequency, 
        label = frequency, group = Category),
    position = position_dodge2(width = 0.5, 
                               preserve = "single"),
    vjust = 0.5, 
    size = 5.5,
    family = "Jost* Medium", 
    color ="#011f4b"
  ) +
  theme_minimal() +
  theme(plot.title = ggtext::element_textbox_simple(size = 26,
                                                    family = "Jost* Black", 
                                                    halign = 0.5,  
                                                    valign = 0.5),
        legend.position = c(0.75,0.8),
        legend.direction = 'vertical',
        legend.key = element_blank(),
        legend.key.size = unit(1.5, 'lines'),
        legend.text = element_text(size=15, 
                                   family = "Jost* Semi", 
                                   color = "#212121"),
        legend.title = element_blank(),
        legend.title.align = 0.5,
        legend.spacing.x = unit(0.5, "cm"), 
        legend.spacing.y = unit(0.5, "cm"),
        legend.background = element_blank(),
        panel.background = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        axis.ticks = element_blank(),
        axis.text.y = element_blank(),
        axis.text.x = element_text(size=15, 
                                   family = "Jost* Bold", 
                                   color = "#353535"),
        panel.border = element_blank(),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank()) + 
  ggtitle(
    paste0(
      "<span style='color:#2c2f33'>**By the Numbers:**</span> ",
      "<span style='color:#863f86'>**Clinical Research Design Resource Facilities**</span>"
    )  
  ) +
  scale_fill_manual(values = crrf_colors)

crrfp

ggsave(
  crrfp,
  file=here(plots, "crrf.pdf"), 
  bg="transparent",
  device = cairo_pdf,
  width = 297,
  height = 210,
  units = "mm"
)

# CRRF int ----
girafe(code = print(crrfp + guides(fill=FALSE)),
       width = 7, 
       options = list(
         opts_toolbar(position = "bottomleft"),
         opts_sizing(rescale = TRUE, 
                     width = 0.8)
       )
) %>%
  girafe_options(ggiraph::opts_tooltip(css = tooltip_css, 
                                       opacity = 0.95, 
                                       offx = 20, 
                                       offy = -10, 
                                       use_stroke = TRUE, 
                                       delay_mouseout = 1000), 
                 opts_hover(css = "fill:#0b4069;
                                   stroke:#dfe3ee;
                                   stroke-width:0px;"),
                 opts_zoom(max = 10))


# IDS ----
ids <- read_csv(here(data,"core_data.csv")) %>%
  filter(`Core Name` == "WVCTSI Investigator Development Services") %>%
  mutate(purchase = mdy_hm(`Purchase Date`)) %>%
  mutate(Month = month(purchase, label = TRUE)) %>%
  select(Month, `Core Name`, Category) %>%
  filter(Month %in% QUARTER) %>%
  mutate(`Core Name` = str_replace(`Core Name`, "WVCTSI ", "")) %>% 
  replace(.=="Services", "Other Services")  %>%
  count(Month, Category) %>%
  mutate(nn = sum(n)) %>%
  mutate(prop = (n / nn)*100) %>%
  mutate_if(is.numeric, round, 0) %>% 
  rename(frequency = n) %>%
  rename(agg = nn) %>%
  mutate(Total = paste0(Category," (",prop,"%)")) %>%
  droplevels() %>%
  mutate(Month = case_when(
    Month == "Jan" ~ "January",
    Month == "Feb" ~ "February",
    Month == "Mar" ~ "March",
    Month == "Apr" ~ "April",
    Month == "May" ~ "May",
    Month == "Jun" ~ "June",
    Month == "Jul" ~ "July",
    Month == "Aug" ~ "August",
    Month == "Sep" ~ "September",
    Month == "Oct" ~ "October",
    Month == "Nov" ~ "November",
    Month == "Dec" ~ "December"
    ) 
  ) %>%
  mutate(Month = factor(Month, levels = ordered_months)) %>%
  mutate(tip = case_when(
    str_detect(Category, "Services") ~ paste0(Category," were provided ", prop,"% of the time in ", Month),
    TRUE ~ paste0(Category," was provided ", prop,"% of the time in ", Month)
    )
  ) %>%
  arrange(Month) %>%
  filter(!frequency == 0) %>%
  filter(!str_detect(Category, "Total")) %>%
  mutate(tip = str_wrap(tip, 10)); ids

idsp <- ids %>%
  ggplot(aes(x = Month, y = frequency)) +
  geom_bar_interactive(aes(fill = Category,
                           tooltip = tip,
                           data_id = Category), 
                       stat="identity", 
                       size = 0.8, 
                       width = 0.25, 
                       color = "#FFFFFF",
                       position=position_dodge2(width = 0.25,
                                                preserve = "single")) +
  geom_label(
    aes(x = Month, 
        y = frequency, 
        label = frequency, group = Category),
    position = position_dodge2(width = 0.25, 
                               preserve = "single"),
    vjust = 0.5, 
    size = 5.5,
    family = "Jost* Medium", 
    color ="#011f4b"
  ) +
  theme_minimal()+
  theme(plot.title = ggtext::element_textbox_simple(size = 26,
                                                    family = "Jost* Black", 
                                                    halign = 0.5,  
                                                    valign = 0.5),
        legend.position ="bottom",
        legend.direction = 'horizontal',
        legend.text = element_text(size=15, 
                                   family = "Jost* Semi", 
                                   color = "#212121"),
        legend.title = element_blank(),
        legend.title.align = 0.5,
        legend.spacing.x = unit(0.5, "cm"), 
        legend.spacing.y = unit(0.5, "cm"),
        legend.background = element_blank(),
        panel.background = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        axis.ticks = element_blank(),
        axis.text.y = element_blank(),
        axis.text.x = element_text(size=15, 
                                   family = "Jost* Bold", 
                                   color = "#353535"),
        panel.border = element_blank(),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank()) + 
  ggtitle(
    paste0(
      "<span style='color:#2c2f33'>**By the Numbers:**</span> ",
      "<span style='color:#0c5a4e'>**Investigator Development Services**</span>"
    )  
  )  +
  scale_fill_manual(values = ids_cols)

idsp

ggsave(
  idsp,
  file=here(plots,"ids.pdf"), 
  bg="transparent",
  device = cairo_pdf,
  width = 297,
  height = 210,
  units = "mm"
)

# IDS Charge int ----
girafe(code = print(idsp + guides(fill=FALSE)),
       width = 7, 
       options = list(
         opts_toolbar(position = "bottomleft"),
         opts_sizing(rescale = TRUE, 
                     width = 0.8)
       )
) %>%
  girafe_options(ggiraph::opts_tooltip(css = tooltip_css, 
                                       opacity = 0.95, 
                                       offx = 20, 
                                       offy = -10, 
                                       use_stroke = TRUE, 
                                       delay_mouseout = 1000), 
                 opts_hover(css = "fill:#0b4069;
                                   stroke:#dfe3ee;
                                   stroke-width:0px;"),
                 opts_zoom(max = 10))


