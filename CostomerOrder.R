install.packages("car")
install.packages("readxl")
library(readxl)
library(car)
CostomerOrder<-read.csv(file.choose())   # JohnyTalkers.xlsx
View(CostomerOrder)
attach(CostomerOrder)
table(Phillippines,Indonesia,Malta,India)
chisq.test(Phillippines,Indonesia,Malta,India)
?chisq.test
