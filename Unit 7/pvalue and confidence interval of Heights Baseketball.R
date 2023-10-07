df <- read.csv("C:/Users/lopez/OneDrive/Old Documents & Artifacts/Documents/GitHub/MSDS_6371_Stat_Foundations/Unit 6/FLS/ANOVA Sports Height Example.csv")

# Convert 'Sport' column to a factor
df$Sport <- as.factor(df$Sport)

p_value <- summary_contrast$coefficients["SportBasketball vs Others", "Pr(>|t|)"]
conf_interval <- confint(model, level = 0.95)["SportBasketball vs Others",]

p_value <- 3.38816291758571e-08
conf_interval [1:2] 5.05 8.77