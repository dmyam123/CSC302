df = read.csv(file="Downloads/metabolite.csv")

library(dplyr)
df 
  summarise_all(~sum(is.na(.)))
