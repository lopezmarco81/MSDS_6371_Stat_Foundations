# Function to perform permutation test for difference in means
perm_test <- function(data, group_col, value_col, nperm=10000) {
  observed_diff <- diff(tapply(data[[value_col]], data[[group_col]], mean))
  
  perm_diffs <- numeric(nperm)
  
  for (i in 1:nperm) {
    permuted_data <- sample(data[[group_col]])
    perm_diffs[i] <- diff(tapply(data[[value_col]], permuted_data, mean))
  }
  
  p_value <- mean(abs(perm_diffs) >= abs(observed_diff))
  
  # Plot the histogram of permuted differences
  hist(perm_diffs, breaks=50, main="Permutation Test: Histogram of Permuted Differences",
       xlab="Difference in Means", col='lightblue', border='black')
  abline(v=observed_diff, col="red", lwd=2)
  legend("topright", legend=paste("Observed Difference =", round(observed_diff, 2)), col="red", lwd=2)
  
  return(list(observed_diff = observed_diff, p_value = p_value))
}

# Sample data
data <- data.frame(
  Action = c(rep("L", 9), rep("U", 7)),
  PercentLost = c(45, 53.1, 40.8, 75.5, 46.7, 85.4, 85.6, 18.2, 43.2, 23.6, 13.3, 34.2, 18.1, 56.1, -8.1, -20.1)
)

# Perform the test
result <- perm_test(data, "Action", "PercentLost")

# Print the results
cat("Observed difference in means:", result$observed_diff, "\n")
cat("Permutation test p-value:", result$p_value, "\n")

# Conclusion
if (result$p_value < 0.05) {
  cat("Based on the permutation test, there is evidence to reject the null hypothesis. Logging appears to significantly affect the percentage of seedlings lost.")
} else {
  cat("Based on the permutation test, there isn't enough evidence to reject the null hypothesis. We cannot say that logging has a significant effect on the percentage of seedlings lost.")
}
