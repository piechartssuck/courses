# Unload all packages -----
# lapply(paste('package:',names(sessionInfo()$otherPkgs),sep=""),detach,character.only=TRUE,unload=TRUE

library(tidyverse)
library(showtext)
library(ggthemes)
library(scales)
library(ggrepel)
library(here)
library(grid)
library(ggplotify)
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

tooltip_css <- "background-color: #f7f7f7;
                color: #181818;
                font-weight: 600;
                font-family: Arial, Helvetica, sans-serif;
                padding:10px;
                border-radius:5px;"

# Define Core and Type factor order----
core_order = c("ADMIN", "CAMC", "CEO", "CRDEB", "CRRF", "MU", "PD", "PILOT", "PPC", "TECH")
type_order <- c("Federal", "State", "Industry", "Private Non-Profit", "Other")

# Assign colors -----
core_colors = c(ADMIN = "#d2b22b", 
                CAMC = "#007BC1", 
                CEO = "#3457a7", 
                CRDEB = "#c13c3a", 
                CRRF = "#663996", 
                MU = "#64A70B", 
                PD = "#72ae43", 
                PILOT = "#b46728", 
                PPC = "#cf6828", 
                TECH = "#037872")

core_order = c("ADMIN", "CAMC", "CEO", "CRDEB", "CRRF", "MU", "PD", "PILOT", "PPC", "TECH")

type_order <- c("Federal", "State", "Industry", "Private Non-Profit", "Other")

facet_order <- c("Proposal", "Award")

prop <- 
  read_csv(here(data, "prop.csv")) %>%
  separate(Cores, 
           into = c(sprintf("Core%d",
                            seq(1:max(str_count(.$Cores, ", ") + 1)), 
                            type="cmd")), 
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
  mutate(Type = factor(Type, levels = type_order)) %>%
  mutate(Stage = "Proposal")

award <- 
  read_csv(here(data,"award.csv")) %>%
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
  mutate(Type = factor(Type, levels = type_order)) %>%
  mutate(Stage = "Award") 

prop_award <- 
  rbind(prop, award) %>%
  mutate(Core = factor(Core, 
                       levels = core_order)) %>%
  mutate(Stage = factor(Stage, 
                        levels = facet_order)) %>%
  group_by(Core, Type, Stage) %>% 
  summarise(Funding = sum(Funding), 
            .groups = 'drop') %>%
  mutate(quarter = "Q4") %>%
  mutate(Type = factor(Type, 
                       levels = type_order)) %>%
  arrange(Core, Stage) %>%
  mutate(tip = case_when(
    str_detect(Stage, "Proposal") ~ paste0(Core," applied for ", dollar(Funding)," in ", Type, " funding"),
    TRUE  ~ paste0(Core," was awarded ", dollar(Funding)," in ", Type, " funding")
    )
  ) %>%
  mutate(tip = str_wrap(tip, 10))

prop_award_plot <- ggplot(data = prop_award, 
                          aes(x = quarter, 
                              Funding, 
                              position = Core)) + 
  geom_bar_interactive(aes(fill = Core,
                           tooltip = tip, 
                           data_id = Core), 
                       stat="identity", 
                       width = 0.2, 
                       color = "#FFFFFF") +
  scale_fill_manual(values = core_colors) +
  theme(plot.title = ggtext::element_textbox_simple(size = 26,
                                                    family = "Jost* Black", 
                                                    halign = 0.31,  
                                                    valign = 0.5),
        legend.position ="bottom",
        legend.direction = 'horizontal',
        legend.key=element_blank(),
        legend.key.size = unit(1.5, 'lines'),
        legend.text = element_text(size = 12, 
                                   family = "Jost* Semi", 
                                   color = "#2c2f33"),
        legend.spacing.x = unit(0.5, "cm"), 
        legend.spacing.y = unit(0.5, "cm"),
        legend.background = element_blank(),
        legend.title = element_blank(),
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
  facet_grid(Stage~Type, 
             scales = "free", 
             labeller = labeller(Type = label_wrap_gen(10))) +
  theme(strip.text.x = element_text(size = 20, 
                                    angle = 0, 
                                    family = "Jost* Bold", 
                                    color = "#909092")) +
  theme(strip.text.y = element_text(size = 20, 
                                    angle = -90, 
                                    family = "Jost* Bold", 
                                    color = "#909092")) +
  theme(strip.background = element_rect(fill="#FFFFFF")) +
  ggtitle(
    paste0(
      "<span style = 'color:#2c2f33'>**External Funding**</span> ",
      "<span style='color:#0275d8'>**Proposal**</span> ",
      "<span style = 'color:#2c2f33'>**and**</span> ",
      "<span style='color:#449d44'>**Award**</span> ",
      "<span style = 'color:#2c2f33'>**Amounts by Core**</span>"
    )
  )

prop_award_plot 

g <- ggplot_gtable(ggplot_build(prop_award_plot))
strip_both <- which(grepl('strip-', g$layout$name))
colors = c("#909092","#909092", "#909092", "#909092", "#909092", "#0275d8", "#449d44")

k <- 1
for (i in strip_both) {
  j <- which(grepl("text", g$grobs[[i]]$grobs[[1]]$childrenOrder))
  g$grobs[[i]]$grobs[[1]]$children[[j]]$children[[1]]$gp$col <- colors[k]
  k <- k+1
}

colored_prop_award_plot <- as.ggplot(g)

girafe(code = print(colored_prop_award_plot),
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
