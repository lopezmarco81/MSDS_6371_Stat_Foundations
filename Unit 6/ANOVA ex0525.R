bachelors <- subset(data, Educ == 16)
higher_degree <- subset(data, Educ > 16)

full_model <- lm(log_income2005 ~ Educ, data=data)
reduced_model <- lm(log_income2005 ~ 1, data=data)

anova_results <- anova(reduced_model, full_model)

summary(full_model)$r.squared

boxplot(log_income2005 ~ Educ, data=data, main="Boxplot of log-transformed incomes by Education Level")
hist(bachelors$log_income2005, main="Histogram of log-transformed incomes for Bachelors", xlab="log(Income)")
hist(higher_degree$log_income2005, main="Histogram of log-transformed incomes for > Bachelors", xlab="log(Income)")
plot(data$Educ, data$log_income2005, main="Scatterplot of log-transformed incomes by Education Level", xlab="Education Level", ylab="log(Income)")

summary(higher_degree$log_income2005)
hist(cleaned_data, breaks=20, main="Histogram of log-transformed incomes for > Bachelors", xlab="log(Income)")

length(cleaned_data)

sum(is.na(higher_degree$log_income2005))
sum(is.infinite(higher_degree$log_income2005))
nrow(higher_degree)

length(higher_degree$log_income2005)
hist(higher_degree$log_income2005, main="Histogram of log-transformed incomes for > Bachelors", xlab="log(Income)")

summary(higher_degree$log_income2005)
sum(is.na(higher_degree$log_income2005))
sum(is.infinite(higher_degree$log_income2005))

summary(higher_degree$Income2005)
