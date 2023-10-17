par(mfrow = c(1, 2))

qqnorm(airline_data$Delta, main = "Q-Q Plot for Delta")
qqline(airline_data$Delta, col = "red")

qqnorm(airline_data$Spirit, main = "Q-Q Plot for Spirit")
qqline(airline_data$Spirit, col = "red")

par(mfrow = c(1, 1))
