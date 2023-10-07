df <- read.csv("C:/Users/lopez/OneDrive/Old Documents & Artifacts/Documents/GitHub/MSDS_6371_Stat_Foundations/Unit 6/FLS/ANOVA Sports Height Example.csv")

# Convert 'Sport' column to a factor
df$Sport <- as.factor(df$Sport)

# Set up the contrast matrix
# Basketball vs. the average of the other sports
contrast_matrix <- cbind("Basketball vs Others" = c(1, -0.25, -0.25, -0.25, -0.25))
contrasts(df$Sport) <- contrast_matrix

# Run the linear model
model <- lm(Height ~ Sport, data=df)
summary(model)

