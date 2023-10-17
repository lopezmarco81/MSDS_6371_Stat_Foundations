data <- data.frame(
  Group = factor(c("Low", "Low-Medium", "Medium-High", "High")),
  Average = c(0.26, 0.37, 0.36, 0.47),
  Ability_Level = c(1, 2, 3, 4) # This is the numeric representation
)

lm_model <- lm(Average ~ Ability_Level, data=data)

print(summary(lm_model))

library(ggplot2)
ggplot(data, aes(x=Ability_Level, y=Average)) + 
  geom_point() +
  geom_smooth(method="lm", se=FALSE) +
  labs(title="Scatterplot of Average Performance vs. Ability Level")

residuals <- resid(lm_model)
ggplot(data, aes(x=Ability_Level, y=residuals)) + 
  geom_point() +
  geom_hline(yintercept=0, linetype="dashed") +
  labs(title="Residual Plot")

