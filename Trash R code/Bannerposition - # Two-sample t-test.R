install.packages("readr")  # You only need to run this once to install
library(readr)

path <- "C:/Users/lopez/OneDrive/Old Documents & Artifacts/Documents/GitHub/MSDS_6371_Stat_Foundations/Unit 8/Fall 2018/BannerPositionOnly.csv"

data <- read_csv(path)

head(data)

# Two-sample t-test
result <- t.test(TimeInSec ~ BannerPosition, data=data, var.equal=TRUE)
print(result)

cat("T-value: ", result$statistic, "\n")
cat("Degrees of Freedom: ", result$parameter, "\n")
cat("P-value: ", result$p.value, "\n")

if (result$p.value < 0.05) {
  cat("Reject the null hypothesis: There's a significant difference in browsing time based on banner position.\n")
} else {
  cat("Fail to reject the null hypothesis: No significant difference in browsing time based on banner position.\n")
}

