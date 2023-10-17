file_path <- "C:/Users/lopez/OneDrive/Old Documents & Artifacts/Documents/GitHub/MSDS_6371_Stat_Foundations/Unit 5/HW/EducationData.csv"
data <- read.csv(file_path)

head(data)

model <- aov(Income2005 ~ Educ, data = data)

tk <- TukeyHSD(model)
print(tk)

comparison <- glht(model, linfct = mcp(Educ = "Dunnett"))
summary(comparison)

# Convert Educ to a factor
data$Educ <- as.factor(data$Educ)

# Rerun the ANOVA
model <- aov(Income2005 ~ Educ, data = data)

# Conduct the Tukey-Kramer procedure
tk <- TukeyHSD(model)
print(tk)
