L = c(45,	53.1,	40.8,	75.5,	46.7,	85.4,	85.6,	18.2,	43.2)
U = c(23.6,	13.3,	34.2,	18.1,	56.1,	-8.1,	-20.1) 
wilcox.test(L,U, correct=FALSE)

test_result <- wilcox.test(logged, unlogged, alternative = "greater")

print(test_result)
p_value <- test_result$p.value
print(paste("P-Value: ", p_value))