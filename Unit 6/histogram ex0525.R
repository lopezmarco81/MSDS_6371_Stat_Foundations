head(df)
colnames(df)
unique(df$Educ)
higher_degree <- df[df$Educ > 16, ]
head(higher_degree)
summary(higher_degree$Income2005)

df$Educ <- as.factor(df$Educ)
higher_degree <- df[df$Educ == ">16", ]
higher_degree <- df[df$Educ == ">16", ]
head(higher_degree)
summary(higher_degree$Income2005)

hist(higher_degree$Income2005, main="Histogram of Incomes for > Bachelors", xlab="Income")
hist(higher_degree$log_Income2005, main="Histogram of log-transformed incomes for > Bachelors", xlab="log(Income)")

