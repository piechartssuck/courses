# Unload all packages
# lapply(paste('package:',names(sessionInfo()$otherPkgs),sep=""),detach,character.only=TRUE,unload=TRUE)

library(tidyverse)
library(showtext)
library(ggthemes)
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

# Define Core and Type factor orders----
core_order = c("ADMIN", "CAMC", "CEO", "CRDEB", "CRRF", "MU", "PD", "PILOT", "PPC", "TECH")

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

# Load the file
pres <- read_csv(here(data,"pres.csv")) %>%
        separate(Cores, 
                 into = dput(c(sprintf("Core%d",seq(1:max(str_count(.$Cores, ", ") + 1)), type="cmd"))), 
                        sep =",") %>%
        gather(key, value = Cores) %>%
        select(-key) %>%
        mutate(Cores = str_trim(Cores)) %>%
        na.omit() %>%
  group_by(Cores) %>%
  summarise(Frequency = n()) %>%
  complete(Cores, fill = list(count = 0)) %>%
  mutate(Cores = fct_reorder(Cores, desc(Frequency))); pres

# Presentation plot ----
pres_plot <- ggplot(pres, aes(x = Cores,
                              y = Frequency)) +
  geom_bar(aes(fill = Cores), 
           width = 0.35, 
           stat="identity", 
           position=position_dodge(0.5)) +
  geom_label(aes(y = Frequency + 0.3, 
                 label = Frequency), 
             show.legend = FALSE, size=8, 
             family = "Jost* Semi", 
             color = "#59595B") +
  scale_fill_manual(values = colors, guide = guide_legend(reverse = TRUE)) +
  theme(plot.title = element_text(size = 26,
                                  family = "Jost* Black", 
                                  color ="#484849", 
                                  vjust = 1, 
                                  hjust = 0.5,
                                  margin = margin(0, 0, 5, 0)),
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
        panel.grid.major.y = element_line(color = "#cccccc"), 
        panel.grid.minor = element_blank(),
        aspect.ratio = 2.5/3.0) +
  coord_flip() + 
  theme(strip.text.x = element_text(size = 20, 
                                    angle = 0, 
                                    family = "Jost* Bold", 
                                    color = "#909092")) +
  theme(strip.background = element_rect(fill="#FFFFFF")) +
  ggtitle(str_wrap("Presentation Counts by Core", width = 50))

pres_plot

##  Save file -----
ggsave(
  pres_plot,
  file=here(plots, "pres.pdf"),
  device = cairo_pdf,
  bg="transparent",
  width = 297,
  height = 210,
  units = "mm"
)


