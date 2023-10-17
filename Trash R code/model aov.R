model <- aov(Income2005 ~ Educ, data = data)
summary(model)

tk <- TukeyHSD(model)
print(tk)

library(ggplot2)
ggplot(data, aes(x=Income2005)) + 
  geom_histogram(binwidth=5000, fill="#69b3a2", color="#e9ecef", alpha=0.7) + 
  facet_wrap(~Educ) +
  theme_minimal() +
  labs(title="Distribution of Income by Education Level",
       x="Income for the Year 2005",
       y="Count of Individuals")
