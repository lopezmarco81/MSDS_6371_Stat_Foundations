# Reading the CSV file into a data frame
mydata <- read.csv("C:/Users/lopez/OneDrive/Old Documents & Artifacts/Documents/GitHub/MSDS_6371_Stat_Foundations/Unit 5/HW/Logging.csv")

# Show the first few rows of the data frame
head(mydata)

install.packages("readxl")
# Load the readxl package
library(readxl)

# Reading the Excel file into a data frame
mydata <- read_excel("C:/Users/lopez/OneDrive/Old Documents & Artifacts/Documents/GitHub/MSDS_6371_Stat_Foundations/Unit 5/HW/Logging.csv")

# Show the first few rows of the data frame
head(mydata)


#mydata <- read.csv("C:\\Users\\lopez\\OneDrive\\Old Documents & Artifacts\\Documents\\GitHub\\MSDS_6371_Stat_Foundations\\Unit 5\\HW\\Logging.csv")
