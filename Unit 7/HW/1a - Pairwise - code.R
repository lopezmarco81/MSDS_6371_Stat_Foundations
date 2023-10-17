library(tidyverse)
library(emmeans)

handicaps <- read.csv("C://Users//lopez//OneDrive//Old Documents & Artifacts//Documents//GitHub//MSDS_6371_Stat_Foundations//Unit 7//HW//Unit 7 Handicap Data.csv")


model <- aov(Score ~ Handicap, data=handicaps)

summary(model)  

pairwise <- emmeans(model, pairwise ~ Handicap, adjust = "tukey")
pairwise  
