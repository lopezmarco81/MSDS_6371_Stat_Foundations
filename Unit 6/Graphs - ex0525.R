install.packages("ggplot2")
install.packages("readr")

library(ggplot2)
library(readr)

# Replace 'your_file.csv' with the path to your actual CSV file
data <- read_csv("C:/Users/lopez/OneDrive/Old Documents & Artifacts/Documents/GitHub/MSDS_6371_Stat_Foundations/Unit 6/FLS/ex0525.csv")

ggplot(data, aes(x=log_var)) +
  geom_histogram(binwidth=0.5, fill="blue", alpha=0.7) +
  ggtitle("Histogram of log_var") +
  xlab("log_var") +
  ylab("Frequency")

colnames(data)
data$log_var <- log(data$Income2005)

# Create a log_var column based on the income2005 column, replace 'income2005' if your column has a different name
data$log_var <- log(data$income2005)

ggplot(data, aes(x=log_var)) +
  geom_histogram(binwidth=0.5, fill="blue", alpha=0.7) +
  ggtitle("Histogram of log_var") +
  xlab("log_var") +
  ylab("Frequency")

ggplot(data, aes(x=log_var)) +
  geom_histogram(binwidth=0.5, fill="blue", alpha=0.7) +
  facet_wrap(~Educ) +
  ggtitle("Histogram of log_var by Education Level") +
  xlab("log_var") +
  ylab("Frequency")

