# Load your data from a CSV file using forward slashes in the path
data <- read.csv("C:/Users/lopez/OneDrive/Old Documents & Artifacts/Documents/GitHub/MSDS_6371_Stat_Foundations/Unit 3/EducationData.csv")

# Perform Bartlett test to check homogeneity of variances
bartlett_result <- bartlett.test(Income2005 ~ Educ, data = data)

# Print the Bartlett test result
print(bartlett_result)

library(lattice)

histogram(~ Income2005 | Educ,
          data=Data,
          layout=c(1,2)      #  columns and rows of individual plots
)

boxplot(Income2005 ~ Educ,
        data = Data,
        names=c("2 pm","5 pm"),
        ylab="Value")

### --------------------------------------------------------------
### Power analysis, t-test, wide feet, p. 131
### --------------------------------------------------------------

M1  = 100.6                      # Mean for sample 1
M2  = 103.6                      # Mean for sample 2
S1  =  5.26                      # Std dev for sample 1
S2  =  5.26                      # Std dev for sample 2

Cohen.d = (M1 - M2)/sqrt(((S1^2) + (S2^2))/2) 

library(pwr)

pwr.t.test(
  n = NULL,                   # Observations in _each_ group
  d = Cohen.d,           
  sig.level = 0.05,           # Type I probability
  power = 0.90,               # 1 minus Type II probability
  type = "two.sample",        # Change for one- or two-sample
  alternative = "two.sided")