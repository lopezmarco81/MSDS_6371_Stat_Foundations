Input =("
Subject Educ Income2005

")

Data = read.table(textConnection(Input),header=TRUE)

bartlett.test(Income2005 ~ Educ, data=Data)
### If p-value >= 0.05, use var.equal=TRUE below


Bartlett's K-squared = 1.2465, df = 1426, p-value = 0.2642

t.test(Income2005 ~ Educ, data=Data,
       var.equal=TRUE,
       conf.level=0.95)

library(lattice)

histogram(~ Income2005 | Educ,
          data=Data,
          layout=c(1,2)      #  columns and rows of individual plots
          )
          

boxplot(Income2005 ~ Educ,
        data = Data,
        names=c("12 yrs","16 yrs"),
        ylab="Value")
        
        
M1  = 36864.90                      # Mean for sample 1
M2  = 69996.97                      # Mean for sample 2
S1  = 29369.73                      # Std dev for sample 1
S2  = 64256.80                       # Std dev for sample 2

Cohen.d = (M1 - M2)/sqrt(((S1^2) + (S2^2))/2) 
                                        
library(pwr)
                                  
pwr.t.test(
       n = NULL,                   # Observations in _each_ group
       d = Cohen.d,           
       sig.level = 0.05,           # Type I probability
       power = 0.90,               # 1 minus Type II probability
       type = "two.sample",        # Change for one- or two-sample
       alternative = "two.sided")

 