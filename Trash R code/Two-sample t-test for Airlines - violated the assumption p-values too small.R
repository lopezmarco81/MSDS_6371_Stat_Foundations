library(tidyverse)
library(car)

path <- "C:/Users/lopez/OneDrive/Old Documents & Artifacts/Documents/GitHub/MSDS_6371_Stat_Foundations/Unit 8a Midterm/airline_delay_1.csv"

airline_data <- read_csv(path)


airline_data_long <- airline_data %>% 
  pivot_longer(cols = c(Delta, Spirit), names_to = "airline", values_to = "delay")

shapiro_test_delta <- shapiro.test(airline_data_long$delay[airline_data_long$airline == "Delta"])
shapiro_test_spirit <- shapiro.test(airline_data_long$delay[airline_data_long$airline == "Spirit"])

levene_test <- leveneTest(delay ~ airline, data = airline_data_long)

t_test_result <- t.test(delay ~ airline, data = airline_data_long)

print(paste("Shapiro-Wilk Test p-value for Delta: ", shapiro_test_delta$p.value))
print(paste("Shapiro-Wilk Test p-value for Spirit: ", shapiro_test_spirit$p.value))
print(paste("Levene's Test p-value: ", levene_test[1, "Pr(>F)"]))

print(t_test_result)

