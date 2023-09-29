#Worksheet number 2

#1. Vector using operator
  #1a. Sequence from -5 to 5
  vecSeq <- c(5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5)
  vecSeq
  #1b. x <- 1:7. What will be the value of x?
  x <- 1.7
  x
#2. Create a vector using seq() function
  #2a. seq(1,3, BY = 0.2) #specify step size
  #Write the R script and is output. Describe the output
  vec2Seq <- seq(1,3, by = 0.2)
  vec2Seq
  #every number is added by 0.2
#3. A factory has a census of its workers. There are 50 workers in total.
  workers <-  list("34","28","22","36","27","18","52","39","42","29","35","31","27",
                 "22","37","34","19","20","57","49","50","37","46","25","17","37","43","53","41","51","35",
                 "24","33","41","53","40","18","44","38","41","48","27","39","19","30","61","54","58","26","18")
  workers
  #3a. Access 3rd element. What is the value?
  age3rd <- workers[3]
  age3rd
  
  #3b.  Access 2nd and 4th element, what are the values?
  age4th <- workers[c(2,4)]
  age4th
  
  #3c. Access all but the 4th and 12th element is not included.
  ageNo412 <- workers [-c(4,12)]
  ageNo412
#4. Create a vector x <- c("first"=3, "second"=0,"third=9).
#Then named the vector. names(x).

  xVec <- c("first"=3, "second"=0,"third"=9)
  xVec
  
  #4ab Print the result, then access x[c("first"),"third")]
  #describe the output
  
  xVec2 <- xVec[c("first","third")]
  xVec2    
  
  #the vector that was accessed was displayed 

#5. Create a sequence x from -3:2

  seqNegatreto <- c(-3:2)
  seqNegatreto
  
  #5a Modify 2nd element and change it to 0;
  
  seqNegatreto[2] <-0
  seqNegatreto
  
  #5b the 2nd element "-2" was changed into "0"

#6 The following data shows the diesel fuel purchased by Mr. Cruz

  #6a Create a dat frame for month, price per liter(php) and purchase-quantity (liter).
  
  diesel_fuel <- data.frame(
    Month = c("Jan","Feb","March","April","May","June"),
    Price_per_liter = c(52.50,57.25,60.00,65.00,74.25,54.00),
    Purchase_quantity = c(25,30,40,50,10,45)
  )
  diesel_fuel
  #6b
  ave_fuel_expd <- weighted.mean(diesel_fuel$Price_per_liter,diesel_fuel$Purchase_quantity)
  ave_fuel_expd
