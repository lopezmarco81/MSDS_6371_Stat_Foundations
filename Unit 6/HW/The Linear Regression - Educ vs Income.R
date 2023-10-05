data <- read.csv("C:/Users/lopez/OneDrive/Old Documents & Artifacts/Documents/GitHub/MSDS_6371_Stat_Foundations/Unit 6/FLS/ex0525.csv")

fit <- aov(Income2005 ~ Educ, data=data)
summary(fit)

# Perform the linear regression
lin_fit <- lm(Income2005 ~ Educ, data=data)

# Get the summary
lin_summary <- summary(lin_fit)

# Extract and print R-squared
r_squared <- lin_summary$r.squared
cat("R-squared:", r_squared)

print(lin_summary)

data <- read.csv("C:/Users/lopez/OneDrive/Old Documents & Artifacts/Documents/GitHub/MSDS_6371_Stat_Foundations/Unit 6/FLS/ex0525.csv")

# Load required libraries
install.packages("ggplot2")
install.packages("car")
library(ggplot2)
library(car)

# Load your data
mydata <- read.csv("C:/Users/lopez/OneDrive/Old Documents & Artifacts/Documents/GitHub/MSDS_6371_Stat_Foundations/Unit 6/FLS/ex0525.csv")

#names of column names
names(mydata)



# Create a histogram of the 'Income2005' column
ggplot(mydata, aes(x=Income2005)) +
  geom_histogram(binwidth=1000, fill="blue", alpha=0.7) +
  ggtitle("Histogram of Income2005")

