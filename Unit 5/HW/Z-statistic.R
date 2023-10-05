# Z-statistic
z_statistic <- -2.365

# Calculate the cumulative probability to the left of the Z-statistic
p_value <- pnorm(z_statistic)

# Load the ggplot2 package
library(ggplot2)

# Create a standard normal distribution curve
ggplot(data.frame(x = c(-3, 3)), aes(x = x)) +
  stat_function(fun = dnorm, args = list(mean = 0, sd = 1)) +
  
  # Shade the area representing the p-value using geom_ribbon
  geom_ribbon(data = data.frame(x = c(-3, z_statistic)), aes(ymax = 0, ymin = -0.4, fill = "Shaded Area"), alpha = 0.5) +
  
  # Add a vertical line at the Z-statistic
  geom_vline(xintercept = z_statistic, linetype = "dashed", color = "red") +
  
  # Annotate the Z-statistic and p-value
  annotate("text", x = z_statistic, y = 0.1, label = paste("Z =", z_statistic), color = "red") +
  annotate("text", x = z_statistic, y = 0.2, label = paste("p =", round(p_value, 4)), color = "red") +
  
  # Labels and title
  labs(x = "Z", y = "Density", fill = NULL, title = "One-Sided p-Value Visualization") +
  
  # Customize the theme
  theme_minimal()
