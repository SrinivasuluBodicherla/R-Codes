install.packages("readxl")
library(readxl)
cutlets<-read.csv("C:\\Users\\Sreevani\\Downloads\\Cutlets.csv")
View(cutlets)
colnames(cutlets)<-c("a","b")
attach(cutlets)
View(cutlets)
shapiro.test(a) #p value is 0.32 p high null fly
shapiro.test(b) # p value is 0.522 p high null fly
# both are following normal distribution 
var.test(a,b)
#p-value = 0.3136 p high null fly variance are equal 
t.test(a,b,alternative = "two.sided", confi.level=0.95)
#p value is 0.4723 so accept H0
#There is no significant difference between unit A and unit B so that we can go with two of them 
