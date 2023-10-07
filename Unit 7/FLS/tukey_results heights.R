fit <- aov(Height ~ Sport, data=df)
tukey_results <- TukeyHSD(fit, "Sport")
print(tukey_results)
