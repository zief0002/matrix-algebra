# ANOVA Decomposition viz

library(waffle)

# Vector
x = c(Explained = 4148, Unexplained = 2418)

# Waffle chart
waffle(x, colors = c("#C6DBF0", "#FFF056"), rows = 73, size = 0.25)