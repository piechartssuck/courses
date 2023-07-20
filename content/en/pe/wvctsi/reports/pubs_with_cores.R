# Unload all packages
# lapply(paste('package:',names(sessionInfo()$otherPkgs),sep=""),detach,character.only=TRUE,unload=TRUE)

library(tidyverse)
library(ggthemes)
library(scales)
library(ggrepel)
library(treemapify)
library(viridis)
library(showtext)
library(here)
font_add("Jost* Semi", "Jost-600-Semi.otf")
font_add("Jost* Semi Italic", "Jost-600-SemiItalic.otf")
font_add("Jost* Black", "Jost-900-Black.otf")
font_add("Jost* Medium", "Jost-500-Medium.otf")
font_add("Jost* Light", "Jost-300-Light.otf")
font_add("Jost* Heavy", "Jost-800-Heavy.otf")
showtext_auto()

data <- here::here("content", "reports", "y4q8files")
plots <- here::here("static", "graphics")

# Convert counts to percentages in dplyr
count_to_pct <- function(is, ..., col = n) {
  grouping_vars_expr <- quos(...)
  Col_expr <- enquo(col)
  pubs %>%
    group_by(!!! grouping_vars_expr) %>%
    mutate(pct = (!! col_expr) / sum(!! col_expr)) %>%
    ungroup()
}

# Load the file
pubs <- read_csv(here(data,"pubs_with_cores.csv")) %>%
  rename(PC = c(2)) %>%
  rename(SC = c(3)) %>%
  mutate(PC = replace_na(PC, "unknown")) %>%
   separate(PC, 
            into = dput(c(sprintf("PC%d",seq(1:max(str_count(.$PC, ", ") + 1)), type="cmd"))), 
            sep =",") %>%
  mutate(PC1 = replace_na(PC1, "unknown")) %>%
  separate(Partners, 
           into = dput(c(sprintf("Partners%d",seq(1:max(str_count(.$Partners, ", ") + 1)), type="cmd"))), 
           sep =",") %>% 
  mutate(across(where(is.character), str_trim)) %>%
  gather(key = Type, value = Core, -Citation) %>%
  select(-Type) %>%
  na.omit() %>%
  arrange(Citation) %>%
  group_by(Core) %>%
  summarise(count = n()) %>%
  complete(Core, fill = list( count = 0)) %>%
  rename(Frequency = count) %>%
  mutate(fraction = Frequency/sum(Frequency)) %>%
  mutate(ymax = cumsum(fraction)) %>%
  mutate(ymin = c(0, head(ymax, n=-1)))


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
           TECH = "#037872",
           unknown = "#c0c5ce",
           WVU = "#002855")

# Plot
pub_counts_by_core <- ggplot(pubs, 
                             aes(ymax=ymax, 
                                 ymin=ymin, 
                                 xmax=4, 
                                 xmin=3, 
                                 label = Core))+
  geom_rect(aes(fill = Core), 
            color = "#FFFFFF", 
            size = 0.6) +
  geom_label(data = subset(counts, fraction > 0), 
             aes(label=Frequency,
                 x=3.5,
                 y=(ymin+ymax)/2),
             inherit.aes = TRUE, 
             show.legend = FALSE, 
             size=8, 
             family = "Jost* Semi", 
             color = "#59595B") +
  scale_fill_manual(values = colors) +
  coord_polar(theta = "y",start=-pi/2) + 
  xlim(c(0,4)) + 
  ylim(c(0,2)) +
  theme_bw() +
  theme(plot.title = element_text(size = 26,
                                  family = "Jost* Black", 
                                  color ="#484849",  
                                  vjust = 1, 
                                  margin = margin(30, 0, -30, 0)),
        legend.position ="bottom",
        legend.direction = 'horizontal',
        legend.key = element_rect(size = 5, color = NA),
        legend.key.size = unit(1.5, 'lines'),
        legend.text = element_text(size=15, 
                                   family = "Jost* Semi", 
                                   color = "#484849",
                                   margin = margin(r = 2, 
                                                   unit = 'cm')),
        legend.title = element_blank(),
        legend.title.align = 0.5,
        legend.spacing.x = unit(0.5, "cm"), 
        legend.spacing.y = unit(0.5, "cm"),
        legend.box.margin = unit(c(-14.5,0.1,0,0),"cm"),
        legend.background = element_blank(),
        panel.background = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        axis.ticks = element_blank(),
        axis.text = element_blank(),
        panel.border = element_blank(),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank()) +
  guides(fill=guide_legend(nrow=2)) +
  ggtitle(str_wrap("Publications by Core", 40)) +
  theme(plot.title = element_text(hjust = 0.5))

pub_counts_by_core

##  Save file -----
ggsave(
  pub_counts_by_core,
  file=here(plots,"pub_counts_by_core.pdf"),
  device = cairo_pdf,
  width = 297,
  height = 210,
  units = "mm"
)

