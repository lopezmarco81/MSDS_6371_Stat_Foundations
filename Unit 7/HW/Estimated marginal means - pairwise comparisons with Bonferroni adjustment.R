emms <- emmeans(model, "Handicap")

pairwise_comp <- contrast(emms, method = "pairwise", adjust = "bonferroni")

filtered_comp <- subset(pairwise_comp, contrast %in% c("Amputee - Crutches", 
                                                       "Amputee - Wheelchair", 
                                                       "Crutches - Wheelchair"))

confint(filtered_comp)
