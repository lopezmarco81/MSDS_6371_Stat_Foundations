selected_contrasts <- emmeans(model, pairwise ~ Handicap, adjust = "tukey")$contrasts

filtered_contrasts <- subset(selected_contrasts, 
                             contrast %in% c("Amputee - Crutches", 
                                             "Amputee - Wheelchair", 
                                             "Crutches - Wheelchair"))

print(filtered_contrasts)
