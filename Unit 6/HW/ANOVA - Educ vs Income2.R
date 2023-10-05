# Assuming 'mydata' is your data frame and it has columns 'Educ' and 'Income2005'
mydata <- read.csv("C:/Users/lopez/OneDrive/Old Documents & Artifacts/Documents/GitHub/MSDS_6371_Stat_Foundations/Unit 6/FLS/ex0525.csv")

# Perform the ANOVA
anova_result <- aov(Income2005 ~ Educ, data=mydata)

# To see the summary of the ANOVA
summary(anova_result)

# Extract Mean Square Error
mean_sq_error <- summary(anova_result)[["error"]][["Mean Sq"]]

# Extract Degrees of Freedom for Error
df_error <- summary(anova_result)[["error"]][["Df"]]
