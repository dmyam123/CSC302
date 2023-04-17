library(maps)
library(mapdata)
library(ggplot2)
library(ggrepel)
library(cowplot)
library(socviz)

install.packages(c("maps", "mapdata", "socviz", "cowplot", "ggrepel"))

states <- map_data("state")

dim(states)


west_coast <- subset(states, region %in% c("california"))

ggplot(data = west_coast) + 
  geom_polygon(aes(x = long, y = lat, group=group), 
               fill = "palegreen", color = "black") +
  coord_fixed(1.3)

wind_ca = read.csv(file="Downloads/wind_turbines.rda")

