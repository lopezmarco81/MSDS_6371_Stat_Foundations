selected_means <- emmeans(model, specs = "Handicap", levels = c("Amputee", "Crutches", "Wheelchair"))
print(selected_means)

selected_pairwise_comparisons <- contrast(selected_means, method = "pairwise", adjust = "bonferroni")
print(selected_pairwise_comparisons)
