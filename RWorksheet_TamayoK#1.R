#Worksheet #1

#Vector

  age <-c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
        35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,
        51, 35, 24, 33, 41.)

#1. data points
  length (age)

#2. reciprocal
  reciprocal <-1/age
  reciprocal

#3. assign also new age <- c(age,0,age)
  new_Age <- c(34, 28, 14)
  new_Age

#4. Sort the values for age
  sort_Age <-c(age)
  sort_Age

#5. Minimum and Maximum
  min_Age <- c(age)
  min_Age
  max_Age <-c(age)
  max_Age 

#6. Vector data
  data <-c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,
         2.5, 2.3, 2.4, 2.7)

#data points
  length (data)

#7. Double the data of new vector
  double_Data <- c(data*2)
  double_Data

#8. Generate following sequence:

#8.1 Integers from 1 to 100
  oneto_Onehundred <- seq(1,100)
  oneto_Onehundred

#8.2 Numbers from 20 to 60
  twentyto_Sixty <- seq(20,60)
  twentyto_Sixty

#8.3 Mean of numbers from 20 to 60
  mTwentyto_Sixty <- mean(twentyto_Sixty)
  mTwentyto_Sixty

#8.4 Sum of numbers from 51 to 91
  fiftywanto_ninetywan <- seq(51,91)
  fiftywanto_ninetywan
  sFiftywanto_ninetywan <- sum(fiftywanto_ninetywan)
  sFiftywanto_ninetywan

#8.5 Integers from 1 to 1000
  oneto_Onek <- seq(1,1000)
  oneto_Onek

#a. data points from 8.1 to 8.4
#1. 
  dataPoints1 <- length(oneto_Onehundred)
  dataPoints1
#2. 
  dataPoints2 <- length(twentyto_Sixty)
  dataPoints2
#3. 
  dataPoints3 <- length(mTwentyto_Sixty)
  dataPoints3
#4. 
  dataPoints4 <- length(fiftywanto_ninetywan)
  dataPoints4

#b. maximum points until 10
  maxNum <- seq (1,10)
  maxNum2 <- max(maxNum)
  maxNum2

#9. Print a vector with the integers between 1 and 100 that are not divisible by 3, 5 and 7 using filter option.

  newoneto_Onehundred <- seq(100)
  Filter(function(i) { all(i %% c(3, 5, 7) != 0) }, seq(100))
  newoneto_Onehundred <- c(newoneto_Onehundred)

#10. generate sequence backwards from 1 to 100
  reverse_oneto_Onehundred <- seq(100,1)
  reverse_oneto_Onehundred

#11. list all of the natural numbers below 25 that are the multiples of 3 or 5
  
  numFirst <- seq(24,1)
  numSec <- Filter(function(i){ all (i %% 3==0 | i %% 5==0)!=0}, seq(24,1))
  numSec <- c(numSec)
  numFirst <- sum(numFirst)
  numFirst

