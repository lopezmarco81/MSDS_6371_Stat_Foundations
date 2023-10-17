library(ggplot2)
ggplot(data, aes(x=Income2005)) + geom_histogram(binwidth=5000) + facet_wrap(~Educ)

library(car)
leveneTest(Income2005 ~ Educ, data=data)

model <- aov(Income2005 ~ Educ, data = data)
summary(model)

model <- aov(Income2005 ~ Educ, data = data)
summary(model)

tk <- TukeyHSD(model)
print(tk)

shapiro.test(data$Income2005[data$Educ == 12])
shapiro.test(data$Income2005[data$Educ == 16])
