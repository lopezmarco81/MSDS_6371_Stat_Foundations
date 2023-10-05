# Load the ggplot2 package for plotting
library(ggplot2)

# Perform the ANOVA
anova_result <- aov(Income2005 ~ Educ, data=mydata)

# Print the ANOVA table
summary(anova_result)

Df Sum Sq Mean Sq F value Pr(>F)
Educ         1   2000    2000   4.000 0.0523
Residuals   98  49000     500
