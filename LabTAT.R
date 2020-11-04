library(car)
LabTAT<-read.csv("C:\\Users\\Sreevani\\Downloads\\LabTAT.csv")   # ContractRenewal_Data(unstacked).xlsx
View(LabTAT)
colnames(LabTAT)<-c("lab1","lab2","lab3","lab4")
View(LabTAT)
attach(LabTAT)
shapiro.test(`lab1`)
shapiro.test(`lab2`)
shapiro.test(`lab3`)
shapiro.test(lab4)
Stacked_Data <- stack(LabTAT)
View(Stacked_Data)
attach(Stacked_Data)
bartlett.test(values~ind, data=Stacked_Data) #test for homogeneity of variances
Anova_results <- aov(values~ind,data = Stacked_Data)
summary(Anova_results)
# p-value > 0.05 accept null hypothesis 
#Null hypothesis: All means are equal
#Alternate hypothesis: means are not equal