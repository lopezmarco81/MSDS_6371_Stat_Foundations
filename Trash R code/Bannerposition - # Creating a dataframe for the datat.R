# Creating a dataframe for the data
data <- data.frame(
  TimeInSec = c(21,	21,	18,	20,	10,	14,	12,	12,	18,	15,	22,	7,	11,	21,	4,	17,	6,	17,	21,	23,	14,	16,	9,	31,	13,	19,	30,	27,	14,	26,	24,	29,	20,	17,	27,	27,	22,	28,	27,	32,	30,	33,	19,	43,	22,	20,	30,	33,	30,	27,	20,	21,	9,	18,	15,	27,	14,	24,	22,	24,	13,	15,	10,	20,	25,	23,	22,	15,	16,	14,	12,	25,	22,	15,	16,	21,	31,	34,	20,	31,	30,	27,	33,	29,	27,	35,	23,	36,	39,	32,	28,	23,	29,	32,	23,	23,	31,	24,	25,	32
),
  BannerPosition = c('left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'left',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	'right',	right
)

result <- t.test(TimeInSec ~ BannerPosition, data=data, var.equal=TRUE)
print(result)

