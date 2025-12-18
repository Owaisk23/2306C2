

a <- 5
print(a)

print("Hello from R")

b <- TRUE
a <- 67.78 

fname <- "Owais Ahmed"
lname <- "Khan"

concatenation 
paste(fname, lname)

## assignment of variables
name <- "Owais Ahmed"
 lname = "Khan"
 "Owais Ahmed Khan" -> fullName
 
#  class(name)
 
#  j <- 5L
#  class(j) # type of numeric class is always double
#  typeof(j)
 
#  #Operators 
# #  #arithmetic
#  num1 <- 20
#  num2 <- 10
 
#  num1 + num2 #ADD
#  num1 - num2 #SUB
#  num1 * num2 #MULTIPLY
#  num1 / num2 #DIVIDE
#  num1 %% num2 #REMAINDER
#  num1 %/% num2 #QUOTIENT
#  num1 ^ num2 #POWER
 
 
 #logical  
 #Assignment Operators
#  <- ,->, =
 #Relational / Comparison
#  < ,> , <=, >=, ==,!=
 

# age = as.integer(readline("Enter your Age...!")) # String

 
#  print(age)
 
 
#  if(age >= 18)
#  {  
#   print("You're an adult.")
   
# }else{
#   print("You're not an adult.")
  
# }
 
 
#   age <- 18
#   print(age)
 
#   if(age > 18 & !(age ==18))
#   {  
#    print("You're an adult.")
 
#   }else if(age == 18){
 
#      print("You're just an adult")
 
#   }else{
#    print("You're not an adult.")
 
#   }
 
 
#  demo <- function(age){
#   if(as.integer(age) > 18 )
#   {  
#    print("You can drive.")
#   }else if(as.integer(age) == 18){
#      print("You should get liscense first")
#   }else{
#    print("You can't drive.")
#   }
#  }
#  demo(8)
 
 # dimensional data (vectors)
#  months <- c(4,5,6)
#  ages <- c(24,45,65)
#  print(ages)
 
#  totalAge <- ages / months
#  totalAge
 
 
#  names<-c("a", "bobzy", "c")
#  names
 
#  if("bob" %in% names){
#      print("value found")
#  }else{
#      print("value not found")
 
#  }
 
#  Switch
#  p <- 1
#  x <- switch(
#  p,
#  "hi",
#  "bye")
 
#  print(x)
 
#  p <- 6
#  x <- switch(
#    as.character(p),
#    "22"="hi",
#    "24"="bye",
#    "4"="hi bye",
#    "6"="bye bye")
 
#  print(x)
 
 #loops for, while, repeat
 #Jump statement
 
 
#  for(i in 1:10){
   
#    print(i)
#  }
 
#  prices <- c(66,78,54,90,87,987,66)
#  print(prices[6])
 
#  for (val in prices){
#   print( paste("Price :", val))
#  }
 
#  #while 
 #x <- 1  #left assignment
#   1 -> x  #right assignment
  
#  while(x < 10){
#    print("hi")
#    x <- x+1;
   
#  }
  
  
#   y<- 3
  
#   repeat{
    
#     if(y == 6){
#       break;
#     }
  
#     print("hi");
#     y<- y + 1
    
#   }
  

#  for(i in 1:10){
#   if(i ==5){
#     next
#   }
#    print(i)
#    if( i ==8) {
#      break
#    }
   
#  }
  
  
  
  
    # Create a program which print country vector with proper sequence.
    #if the value contains 'somalia' it should not get printed but 
    #if the country name is 'pakistan' print happy independence
    #other wise print all names.
   
 
 
 
#  countries <- c("pakistan","somalia","china","japan","korea")
#  i<-1
#  while(i <= length(countries)){
#    if(countries[i]=="somalia"){next}
#    if(countries[i]=="pakistan"){
#    print(paste("Happy independence day ",countries[i]))
#    }else{
#    print(countries[i])
#    }
 
#    i <- i +1
   
#  }
 
 

# matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3) 
# matrix_c 
# dim(matrix_c)

# matrix_a1 <- rbind(matrix_c, c(1:3) )
# matrix_a1
# dim(matrix_a1)


#  matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3) 
# # matrix_c 
# # dim(matrix_c)

# # matrix_a1 <- rbind(matrix_c, c(1:4) )
# matrix_a1 <- cbind(matrix_c, c(1:4) )
# matrix_a1
# dim(matrix_a1)


# matrix_a2 <-matrix(13:24, byrow = TRUE, ncol = 3) 
# matrix_a2;

# matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3)
# matrix_c;
 
# matrix_d <- cbind(matrix_a2, matrix_c) 
# matrix_d
# dim(matrix_d) 



# matrix_a2 <-matrix(13:24, byrow = TRUE, ncol = 3) 
# matrix_a2;

# matrix_c <-matrix(72:86, byrow = FALSE, ncol = 3)
# matrix_c;
 
# matrix_d <- rbind(matrix_a2, matrix_c) 
# matrix_d

# dim(matrix_d) 

# c <-matrix(1:12, byrow = FALSE, ncol = 3) 
# c
# add_row <-c(1:3);#[1,2,3]  1 X 3

# new_matrix <- cbind(c,add_row)
# new_matrix


# northnazimabad<- c("JI","93")
# bufferzone<- c("ppp","67")
# northkarachi<- c("pti","40")
# baldia<- c("mqm","1")

# print(baldia)


# towns<- matrix(c(northnazimabad,bufferzone,northkarachi,baldia),byrow =TRUE, nrow = 4)
#  towns

# dim(towns)


#Task

# Task 01: Create a matrix having values from 72 to 80. Specify no of columns too. The matrix should be filled in top to bottom manner.

# Task 02: Now create a transpose of the same matrix and store it in a new matrix named transposeMat.

# Task 03 : Create a new matrix combining both matrix using cbind and rbind both.


# Data Frames

# myData <- data.frame(
# name= c("Owais Ahmed", "Owais", "Usama","Shakoor"),
# age= c(56, 44, 34,67),
# city= c("Karachi","Lahore","Islamabad","Larkana")
# )
# myData
# summary (myData)
# myData$name
# myData[["name"]]
# myData[1]



# roll_no = c(1,4,5,6,7)
# Student_name = c("John Cena","tom Holland","Professor","Spiderman","Iron Man")
# profession = c("Wrestling","Actor","Heister","Super Hero","Spiderman")

# mera_data_frame = data.frame(roll_no,Student_name,profession)
# print(mera_data_frame)

#  summary(mera_data_frame)
# print(dataframe[1])

# factors
#   myFactors<- factor(c("Karachi", "Lahore","Karachi","Islamabad","Multan"))
#   print(myFactors)

# plot(c(4,5), c(3,7))

# 4 , 3      5, 7

# plot(c(1,�2,�3,�4,�5), c(3,�7,�8,�9,�12),main="Sales plot", xlab="x-axis", ylab="y-axis")


# plot(c(4,5,2), c(3,7,5),pch=23, cex=1, type = "o")


# plot(1:10,�type="l")
# plot(1:10,pch=7, cex=2)


# plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis")

# plot(1:10,�type="l", col="yellow")

# Create a data frame named AquaMarine. It should contain fishes name, their age, their price food the eat. The length should be 5. print summary too

# Create a factor of categorizing mobiles.

# Create a plot of: apply pch and color too.
# c(2.8, 5 ,8 ,6,3)
# c(4, 2 ,1 ,3,10)


#Scatter Plot


# x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
# y <-c(99,86,87,88,111,103,87,94,78,77,85,86)
# plot(x, y)


#  x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
#  y <-c(99,86,87,88,111,103,87,94,78,77,85,86)

#  plot(x, y, main="Observation of Cars", xlab="Car age", ylab="Car speed")


# Compare Plot
# x1 <- c(5,7,8,7,2,2,9,4,11,12,9,6)
# y1 <- c(99,86,87,88,111,103,87,94,78,77,85,86)
# # day two, the age and speed of 15 cars
# x2 <-c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
# y2 <-c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

# day 3
# x3 <-c(4,5,7,10,1,8,12,9,7,3,11,4,7,14,12)
# y3 <-c(105,88,75,85,88,96,90,95,94,100,79,87,91,80,85)

# plot(x1, y1,main="Observation of Cars", xlab="Car age", ylab="Car speed", col="red",cex=2)
# points(x2, y2, col="blue", cex=2,pch=8)
# points(x3, y3, col="green", cex=2,pch=18)
# Create a vector of pies
# x <- c(10,20,30,40,5)
# pie(x)
# # Display the pie chart
# pie(x,init.angle = -90)
# #Labelling
# # Create a vector of pies
# x <- c(10,20,30,40,5)
# mylabel <- c("Union Star","Unique","Suzuki","Honda", "Super star")
# # Display the pie chart
# pie(x,init.angle = 60,labels = mylabel, main="Bike Sales in Pakistan Brand wise")
# #Coloring
# x <- c(10,20,30,40,5)
# mylabel <- c("Union Star","Unique","Suzuki","Honda", "Super star")
# colors <- c("blue","yellow","green","red", "purple")
# # Display the pie chart
# pie(x,init.angle = 60,labels = mylabel, main="Bike Sales in Pakistan Brand wise",col = colors)
# legend("bottomleft", mylabel, fill = colors)
#Bar plot
# max.temp <- c(22, 27, 26, 24, 23, 26, 28)
# barplot(max.temp)

# max.temp <- c(22, 27, 26, 24, 23, 26, 28)
# colors <- c("blue","yellow","green","red", "purple","darkred","black")
# barplot(max.temp, main = "Maximum Temperatures in a Week",
#         ylab = "Degree Celsius", xlab = "Day",
#         names.arg = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
#         col = colors, width = c(8,2,3,4,5,7,6)) 

 
#Scatter Plot

# # Compare Plot
# Create a compare plot of mobiles battery mah and battery backup in hours 
# in 3 days observation.

# # Pie
# Create a pie chart of cryptocurrencies based on their market value. 
# select at least 5.


# # Bar Chart
# Create a bar chart of cryptocurrencies based on their market value.
# select at least 5.

 
 #Data Science  -> datasets -> data (excel, csv, json, txt) -> clean (pre-processing)

#  data cleaning -> removing null values / removing outliers  (neg)

 #1, 3 , 5, 10,-50 = 1+ 3 +5+10-50/5 = 12.8  -->4.9


# Data_Cars <- mtcars
# Data_Cars

# Data_Cars$hp

#  max(Data_Cars$hp)
# min(Data_Cars$hp)

# which.max(Data_Cars$hp)
# which.min(Data_Cars$hp)


# mean(Data_Cars$hp)

# mean(Data_Cars$wt)


# median(Data_Cars$hp)






