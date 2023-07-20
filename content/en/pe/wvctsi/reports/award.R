# Unload all packages -----
# lapply(paste('package:',names(sessionInfo()$otherPkgs),sep=""),detach,character.only=TRUE,unload=TRUE

library(tidyverse)
library(showtext)
library(ggthemes)
library(scales)
library(ggrepel)
library(here)
library(showtext)
font_add("Jost* Light", "Jost-300-Light.otf")
font_add("Jost* Medium", "Jost-500-Medium.otf")
font_add("Jost* Semi", "Jost-600-Semi.otf")
font_add("Jost* Semi Italic", "Jost-600-SemiItalic.otf")
font_add("Jost* Bold", "Jost-700-Bold.otf")
font_add("Jost* Heavy", "Jost-800-Heavy.otf")
font_add("Jost* Black", "Jost-900-Black.otf")
showtext_auto()

data <- here::here("content", "reports", "y4q8files")
plots <- here::here("static", "graphics")

# Construct a tooltip----
tooltip_css <- "background-color: #f7f7f7;
                color: #181818;
                font-weight: 600;
                font-family: Arial, Helvetica, sans-serif;
                padding:10px;
                border-radius:5px;"

# Define Core and Type order----
core_order = c("ADMIN", "CAMC", "CEO", "CRDEB", "CRRF", "MU", "PD", "PILOT", "PPC", "TECH")
type_order <- c("Federal", "State", "Industry", "Private Non-Profit", "Other")

# Assign colors -----
colors = c(ADMIN = "#d2b22b", 
           CAMC = "#007BC1", 
           CEO = "#3457a7", 
           CRDEB = "#c13c3a", 
           CRRF = "#663996", 
           MU = "#64A70B", 
           PD= "#72ae43", 
           PILOT = "#b46728", 
           PPC = "#cf6828", 
           TECH = "#037872")

# Load the file -----
award <- read_csv(here(data,"award.csv")) %>%
  mutate(Funding = as.numeric(as.character(Funding))) %>%
  separate(Cores, 
           into = c(sprintf("Core%d",seq(1:max(str_count(.$Cores, ", ") + 1)), type="cmd")), 
           sep =",") %>%
  gather(key, value = Core, -Type, -Funding) %>%
  select(-key) %>%
  mutate(Core = str_trim(Core)) %>%
  mutate(Funding = na_if(Funding, 0)) %>%
  na.omit() %>%
  mutate(Type = str_to_title(Type))  %>%
  group_by(Core, Type) %>% 
  summarise(Funding = sum(Funding)) %>%
  mutate(Type = factor(Type, levels = type_order)) %>%
  mutate(Core = factor(Core, levels = core_order)) %>%
  mutate(Amounts = scales::dollar_format()(Funding)) %>%
  mutate(quarter = QR) %>%
  mutate(tip = case_when(
    str_detect(Type, "Industry") ~ paste0(Amounts," were awarded from an ", Type, " to ", Core),
    str_detect(Type, "Other") ~ paste0(Amounts, " were awarded to ",  Core, " from an ", Type," agency"),
    TRUE ~ paste0(Amounts, " were awarded to ",  Core, " from a ", Type," agency")
    )
  ) %>%
  mutate(tip = str_wrap(tip, 10))

# Plot awards ----
award_plot <- ggplot(data = award, 
             aes(x = quarter, Funding, position = Core)) + 
  geom_bar_interactive(aes(fill = Core,
                           tooltip = tip,
                           data_id = Core), 
           stat="identity", 
           width = 0.2, 
           color = "#FFFFFF") +
  geom_label_repel(aes(label = dollar(Funding)),
                   position = position_stack(vjust = 0.5),
                   segment.size  = 0.5,
                   segment.color = "#f6f3ed",
                   size = 4,
                   label.size = 0.6,
                   label.padding = 0.5,
                   box.padding = 1.1,
                   force = 2.1,
                   family = "Jost* Semi", 
                   min.segment.length = 0.1,
                   color = "#212121",
                   direction = "both",
                   show.legend = FALSE,
                   max.overlaps = 30) +
  scale_fill_manual(values = colors) +
  theme(plot.title = ggtext::element_textbox_simple(size = 26,
                                                    family = "Jost* Black", 
                                                    halign = 0.31,  
                                                    valign = 0.5),
        legend.position ="bottom",
        legend.direction = 'horizontal',
        legend.key=element_blank(),
        legend.key.size = unit(1.5, 'lines'),
        legend.text = element_text(size=15, 
                                   family = "Jost* Semi", 
                                   color = "#484849"),
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
        axis.text.x = element_blank(),
        panel.border = element_blank(),
        panel.grid.major.x = element_blank(), 
        panel.grid.minor = element_blank()) +
  coord_flip() + 
  facet_wrap(~Type, 
             scales = "free", 
             labeller = labeller(Type = label_wrap_gen(10))) +
  theme(strip.text.x = element_text(size = 20, 
                                    angle = 0, 
                                    family = "Jost* Bold", 
                                    color = "#909092")) +
  theme(strip.background = element_rect(fill="#FFFFFF")) +
  ggtitle(
    paste0(
      "<span style = 'color:#2c2f33'>**External Funding**</span> ",
      "<span style='color:#449d44'>**Award**</span> ",
      "<span style = 'color:#2c2f33'>**Amounts by Core**</span>"
    )
  )

award_plot

## Save file -----
ggsave(
  award_plot,
  file=here(plots, "award.pdf"),
  device = cairo_pdf,
  width = 297,
  height = 210,
  units = "mm"
)

award_norepel <- gginnards::delete_layers(award_plot + guides(fill=FALSE), 
                                          match_type ="GeomLabelRepel")

# Award int -----
girafe(code = print(award_norepel),
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
