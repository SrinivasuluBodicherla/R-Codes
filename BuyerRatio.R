install.packages("readxl")
library(readxl)
install.packages("car")
library(car)
BuyerRatio<-read.csv("C:\\Users\\Sreevani\\Downloads\\BuyerRatio.csv") # Bahaman.xlsx
View(BuyerRatio)
attach(BuyerRatio)
Stacked_Data <- stack(BuyerRatio)
View(Stacked_Data)
attach(Stacked_Data)
?bartlett.test
?aov
bartlett.test(values~ind, data=Stacked_Data) #test for homogeneity of variances
Anova_results <- aov(values~ind,data = Stacked_Data)
summary(Anova_results)
# p-value = 0.762 > 0.05 accept null hypothesis 
#Null hypothesis: All means are equal
#Alternate hypothesis: means are not equal