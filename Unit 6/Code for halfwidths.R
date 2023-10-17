emm <- emmeans(model, ~ Handicap)

conf_ints <- confint(emm)

halfwidths <- (conf_ints[, "upper.CL"] - conf_ints[, "lower.CL"]) / 2

emm <- emmeans(model, ~ Handicap)
conf_ints <- confint(emm)
halfwidths <- (conf_ints[, "upper.CL"] - conf_ints[, "lower.CL"]) / 2

summary_emm <- summary(emm)

results <- data.frame(
  Handicap = rownames(conf_ints),
  LSMEAN = summary_emm$emmean,
  HalfWidth = halfwidths
)

print(results)
