install.packages("readxl")
library(readxl)
library(car)
Faltoons<-read.csv("C:\\Users\\Sreevani\\Downloads\\Faltoons.csv")   # JohnyTalkers.xlsx
View(Faltoons) 
attach(Faltoons)
table1 <- table(Weekend,Weekdays)
View(table1)
table1
?prop.test
prop.test(x=c(120,47),n=c(287,113),conf.level = 0.95,correct = FALSE,alternative = "two.sided")
#P value>0.05 So that accept Null hypothesis 
