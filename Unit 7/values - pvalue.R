# Run the linear model
model <- lm(Height ~ Sport, data=df)
summary_contrast <- summary(model)

p_value <- summary_contrast$coefficients["SportBasketball vs Others", "Pr(>|t|)"]
conf_interval <- confint(model, level = 0.95)["SportBasketball vs Others",]
