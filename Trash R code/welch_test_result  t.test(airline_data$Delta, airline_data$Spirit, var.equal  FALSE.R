welch_test_result <- t.test(airline_data$Delta, airline_data$Spirit, var.equal = FALSE)

print("Welch's t-test result:")
print(welch_test_result)
