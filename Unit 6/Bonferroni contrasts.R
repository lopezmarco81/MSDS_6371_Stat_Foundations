selected_contrasts_bonferroni <- emmeans(model, pairwise ~ Handicap, adjust = "bonferroni")$contrasts

# Filter out only the comparisons of interest
filtered_contrasts_bonferroni <- subset(selected_contrasts_bonferroni, 
                                        contrast %in% c("Amputee - Crutches", 
                                                        "Amputee - Wheelchair", 
                                                        "Crutches - Wheelchair"))
print(filtered_contrasts_bonferroni)
