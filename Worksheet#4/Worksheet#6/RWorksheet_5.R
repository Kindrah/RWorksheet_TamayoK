#RWorksheet6

#1.
student <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
pre_test <- c(55, 54, 47, 57, 51, 61, 57, 54, 63, 58)
post_test <- c(61, 60, 56, 63, 56, 63, 59, 56, 62, 61)

myd <- data.frame(
  student = student,
  pre_test = pre_test,
  post_test = post_test
)
#print data frame
myd

#1b.

use_hmsic <- Hmisc::describe(myd)
use_pastecs <- pastecs::stat.desc(myd)

use_hmsic
use_pastecs

#2.
fertilizer <- c(10,10,10, 20,20,50,10,20,10,50,20,50,20,10)
factFert <- factor(fertilizer)
factFert2 <- as.ordered(factFert)
levels(factFert2)
#print output
fertilizer
factFert2
#the result show the levels of the vector.

#3.

exerlev <- c("l", "n", "n", "i", "l", "l", "n", "n", "i", "l")

# Create a factor variable with custom levels
exerfact <- factor(exerlev)
levels(exerlev)

# Display the result
print(exerfact)

#4.

state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")
statefactor <- factor(state,levels = c("sa", "tas", "qld", "nsw", "wa", "vic", "act", "nt"))
levels(statefactor)
#the result shows the levels of the vector. It summarizes what is the content of the vector.

#5a.
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
incomeans <- tapply(incomes, statefactor, mean)
incomeans

#b.
# act      nsw       nt      qld       sa      tas      vic       wa 
# 44.50000 57.33333 55.50000 53.60000 55.00000 60.50000 56.00000 52.25000

#it provides the average incomes for each state.

#6.
stdError <- function(x) sqrt(var(x) / length(x))

stdErrors <- tapply(incomes, statefactor, stdError)
stdErrors

#7.Use the titanic dataset.

install.packages("titanic")
library(titanic)

data("titanic_train")

survived <- subset(titanic_train, Survived == 1)

not_survived <- subset(titanic_train, Survived == 0)

head(survived)
head(not_survived)

#8. 
#a. describe what is the dataset all about.
#The dataset focuses on women facing breast cancer and involves a survey scale ranging from 1 to 10. 
#This scale is used to assess various characteristics of cell nuclei present in breast cancer, such as clump thickness, size uniformity, shape uniformity, 
#marginal adhesion, epithelial size, bare nucleoli, bland chromatin, normal nucleoli, and mitoses. Each score on the scale reflects the severity or abnormality of the respective characteristic. The dataset aims to capture and analyze these features to gain insights into the nature of breast cancer in the surveyed women.


#d. Compute the descriptive statistics using different packages. Find the values of:
# d.1 Standard error of the mean for clump thickness.
library(readr)

breast_wisconsin <- read_csv("/cloud/project/Worksheet#4/Worksheet#6/breastcancer_wisconsin.csv")
View(breast_wisconsin)

clump_column <- breast_wisconsin$clump_thickness
std_error <- sd(clump_column) / sqrt(length(clump_column))

print(std_error)



#d.2 Coefficient of variability for Marginal Adhesion.


marginal_column <- breast_wisconsin$marginal_adhesion
coefficient_variability <- sd(marginal_column) / mean(marginal_column) * 100

print(coefficient_variability) 



#d.3 Number of null values of Bare Nuclei.



barenucleoli_column <- breast_wisconsin$bare_nucleoli
nullvalues_count <- sum(is.na(barenucleoli_column))


print(nullvalues_count)



#d.4 Mean and standard deviation for Bland Chromatin

mean_bland_chromatin <- mean(breast_wisconsin$bland_chromatin, )
sd_bland_chromatin <- sd(breast_wisconsin$bland_chromatin, )

print(paste("Mean:", mean_bland_chromatin))
print(paste("Standard deviation:", sd_bland_chromatin))


#d.5 Confidence interval of the mean for Uniformity of Cell Shape

shape_uniformity <- breast_wisconsin$shape_uniformity

result <- t.test(shape_uniformity)

cat("Mean:", result$estimate, "\n")
cat("95% confidence interval:", result$conf.int[1], result$conf.int[2], "\n")






#d. How many attributes?

num_attributes <- length(names(breast_wisconsin))
print(num_attributes)




#e. Find the percentage of respondents who are malignant. Interpret the results.



malignant_count <- sum(breast_wisconsin$class == "malignant")
total_count <- nrow(breast_wisconsin)

percentage_malignant <- (malignant_count / total_count) * 100
print(percentage_malignant)



#9. 

install.packages("AppliedPredictiveModeling")
library("AppliedPredictiveModeling")

data("abalone")

head(abalone)
summary(abalone)


library(openxlsx)  

write.xlsx(abalone, file = "abalone.xlsx")
