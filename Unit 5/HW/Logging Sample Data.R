# Sample data
logged <- c(45, 53.1, 40.8, 75.5, 46.7, 85.4, 85.6, 18.2, 43.2)
unlogged <- c(23.6, 13.3, 34.2, 18.1, 56.1, -8.1, -20.1)

# Plot histogram for logged plots
hist(logged, main="Histogram for Logged Plots", xlab="Percent of Seedlings Lost", col="blue", breaks=10)

# Plot histogram for unlogged plots
hist(unlogged, main="Histogram for Unlogged Plots", xlab="Percent of Seedlings Lost", col="green", breaks=10)
