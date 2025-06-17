# Load libraries
# library(gt)
# library(gtExtras)
library(knitr)
library(kableExtra)
library(ggplot2)
library(gt)
library(gtExtras)
library(patchwork)


# Set knitr print options
opts_knit$set(
  width = 85, 
  tibble.print_max = Inf
)


# Set knitr chunk options
opts_chunk$set(
  
  # General
  comment = NA,
  message = FALSE, 
  warning = FALSE,
  tidy = FALSE,
  
  # Figures
  fig.align = 'center',
  fig.height = 6,
  fig.width = 6,  
  out.width = '70%' 
)


# Set global options
options(
  htmltools.dir.version = FALSE,
  tibble.pillar.subtle = FALSE, 
  tibble.pillar.sigfig = 7, 
  tibble.pillar.min_title_chars = 10,
  scipen = 5,
  tibble.width = 70
)



theme_set(theme_bw())  # Set black & white theme as default
theme_update(text = element_text(size = 15))  # Adjust txt size



x = data.frame(x = -15:15) 
y = data.frame(y = -15:15)
fake_graph = tidyr::crossing(x, y)

graph_paper = ggplot(data = fake_graph, aes(x = x, y = y)) +
  geom_point(alpha = 0) +
  theme_light() +
  scale_x_continuous(name ="", breaks = -15:15, labels = NULL, expand = c(0, 0)) +
  scale_y_continuous(name = "", breaks = -15:15, labels = NULL, expand = c(0, 0)) +
  geom_segment(
    x = 0, xend = 0, y = 15, yend = -15, arrow = arrow(length = unit(0.02, "npc"), end = "both", type = "closed")
  ) +
  geom_segment(
    x = -15, xend = 15, y = 0, yend = 0, arrow = arrow(length = unit(0.02, "npc"), end = "both", type = "closed")
  ) +
  theme(
    panel.grid = element_line(color = "#60CDE4"),
    panel.grid.minor = element_blank()
  )
