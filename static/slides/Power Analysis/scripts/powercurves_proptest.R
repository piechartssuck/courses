library(tidyverse)
library(scales)
library(showtext)
font_add_google("Roboto Condensed", "roboto")
showtext_auto()

#========================================================#
# Functions
#========================================================#

#============================
# power_prop_test()
#============================
# a simplification of one of 
# the function from pwr
# for reuse later
power_prop_test <- function(h, n_group) {
  pwr.2p.test(
    h = h,
    n = n_group,
    sig.level = 0.01,
    alternative = 'two.sided'
  )$power
}

#============================
# power_prop_test_grid()
#============================
# function to calculate power for 
# prop.test from:
#   n_group: sample size in each group
#   prop_control: proportion in the control group
#   prop_effect: effect in the treatment group

power_prop_test_grid <- function(n_group, prop_control, prop_effect) {
  # get all possible combinations of 
  # n_group, prop_control, and prop_effect
  expand.grid(list(
    n_group = n_group,
    prop_control = prop_control,
    prop_effect = prop_effect
  )) %>%
    mutate(
      prop_treatment = prop_control + prop_effect,
      # standardised effect size (see pwr docs)
      h = pwr::ES.h(prop_control, prop_treatment),
      # calculate the power
      power = power_prop_test(h, n_group)
    )
}

#========================================================#
# Power curve
#========================================================#

#============================
# power curve data
#============================

# proportions to try for the control group
prop_control <- seq(0.05, 0.5, 0.025)

# effect sizes to try
prop_effect <- seq(0, 0.15, by = 0.001)

# samples sizes for each group to try
n_group <- c(500, 1000, 2500, 5000)

# get the power for all combinations
df_prop_test_power <- power_prop_test_grid(n_group, prop_control, prop_effect)

#============================
# power curve plot
#============================

# create a plot theme
theme_power <- 
  theme_minimal(
    base_size = 12,
    base_family = "roboto") +
  theme(
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.major.y = element_line(color = "#858585", size = 0.5),
    plot.title = element_text(size = 20, color = "#f7f7f7"),
    plot.subtitle = element_text(size = 15, color = "#f7f7f7"),
    axis.title.x = element_text(margin = margin(t = 20, r = 0, b = 0, l = 0), color = "#f7f7f7"),
    axis.title.y = element_text(margin = margin(t = 0, r = 20, b = 0, l = 0), color = "#f7f7f7"),
    axis.text = element_text(color = "#f7f7f7"),
    panel.background = element_rect(color = '#212121', fill = 'transparent'), 
    panel.border = element_rect(color = '#212121', fill = NA, linewidth = 1),
    plot.background = element_rect(fill = '#212121', color = '#212121'),
    legend.background = element_rect(fill = 'transparent', color = 'transparent'), 
    legend.box.background = element_blank(),
    legend.position = "bottom",
    legend.title.align = 0.5,
    legend.key.height = unit(0.5, 'cm'),
    legend.title = element_text(size = 10, color = "#f7f7f7"),
    legend.text = element_text(size = 9, color = "#f7f7f7"),
    strip.background = element_rect(fill = 'transparent', color = "#212121"),
    strip.text = element_text(size = 12, color = '#f7f7f7'))

# set the theme
theme_set(theme_power)

# plot
ggplot(df_prop_test_power) + 
  aes(
    x = prop_effect,
    y = power,
    color = prop_control,
    group = prop_control) +
  geom_line(show.legend = TRUE) +
  # coordinates and scales ------------
  coord_cartesian(xlim = c(0, 0.15)) +
  scale_x_continuous(
    breaks = seq(0, 0.15, 0.025),
    labels = percent_format()) +
  scale_color_distiller(palette = "Spectral") +
  # facet -----------------------------
  facet_wrap( 
    ~ n_group,
    ncol = 2,
  # add 'N per group:' at the start of the facet labels
  labeller = as_labeller(
    function(x) { str_c('N per group: ', x)})) +
  # labels & theme --------------------
# theme(legend.position = c(0.9, 0.2)) +
  labs(
    x = 'Difference between treatment and control groups',
    y = 'Probability of detecting an effect',
    color = 'Baseline % in control group',
    title = 'Power curves for a prop.test',
    subtitle = 'by sample size, base-rate and treatment effect'
  )  +
  guides(color = guide_legend(title.position = "bottom"))

# Derived from https://gist.github.com/eddjberry/68b0495709436af92f504fe707cac51e 
