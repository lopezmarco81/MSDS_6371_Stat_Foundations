means <- c(0.26, 0.37, 0.36, 0.47)
std_devs <- c(0.14, 0.21, 0.17, 0.21)
sample_sizes <- c(17, 24, 25, 14)
weights <- c(-3, -1, 1, 3)

C <- sum(weights * means)

SE_C <- sqrt(sum((weights^2 * std_devs^2) / sample_sizes))

df <- sum(sample_sizes) - length(sample_sizes)

CI_low <- C - qt(0.975, df=df) * SE_C
CI_high <- C + qt(0.975, df=df) * SE_C

list(Contrast = C, CI_Low = CI_low, CI_High = CI_high)
