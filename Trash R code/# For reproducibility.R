set.seed(123) # For reproducibility

generate_data <- function(mean, sd, n) {
  rnorm(n, mean, sd)
}

data_low <- generate_data(0.26, 0.14, 17)
data_low_med <- generate_data(0.37, 0.21, 24)
data_med_high <- generate_data(0.36, 0.17, 25)
data_high <- generate_data(0.47, 0.21, 14)
all_data <- c(data_low, data_low_med, data_med_high, data_high)
groups <- factor(c(rep("Low", 17), rep("Low-Med", 24), rep("Med-High", 25), rep("High", 14)))

model <- aov(all_data ~ groups)

tukey_results <- TukeyHSD(model)

print(tukey_results)
