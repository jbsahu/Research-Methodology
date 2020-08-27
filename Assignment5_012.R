#Assignment_05

#------------------------------------------------------------------------------------------------------------
#                                         Question 2.1
#------------------------------------------------------------------------------------------------------------

#Suppose you keep track of your mileage each time you ﬁll up. At your last 6 ﬁll-ups the mileage was
#               65311 65624 65908 66219 66499 66821 67145 67447
#Enter these numbers into R. Use the function diff on the data. What does it give?
#> miles = c(65311, 65624, 65908, 66219, 66499, 66821, 67145, 67447)
#> x = diff(miles)
#You should see the number of miles between ﬁll-ups. Use the max to ﬁnd the maximum number of miles between
#ﬁll-ups, the mean function to ﬁnd the average number of miles and the min to get the minimum number of miles.
#------------------------------------------------------------------------------------------------------------
#                                         Answer 2.1
#------------------------------------------------------------------------------------------------------------

miles = c(65311, 65624, 65908, 66219, 66499, 66821, 67145, 67447)   #enters miles into R
x = diff(miles)
max(x)                                                            	#the maximum value is
#[1] 324
mean(x)                                                             #the average value is
#[1] 305.1429
min(x)                                                              #the minimum value is
#[1] 280

#------------------------------------------------------------------------------------------------------------
#                                        Question 2.2
#------------------------------------------------------------------------------------------------------------

#Suppose you track your commute times for two weeks (10 days) and you ﬁnd the following times in minutes
#               17 16 20 24 22 15 21 15 17 22
#Enter this into R. Use the function max to ﬁnd the longest commute time, the function mean to ﬁnd the average
#and the function min to ﬁnd the minimum.
#Oops, the 24 was a mistake. It should have been 18. How can you ﬁx this? Do so, and then ﬁnd the new
#average.
#How many times was your commute 20 minutes or more? To answer this one can try (if you called your numbers commutes)
#> sum( commutes >= 20)
#What do you get? What percent of your commutes are less than 17 minutes? How can you answer this with R?
#------------------------------------------------------------------------------------------------------------
#                                         Answer 2.2
#------------------------------------------------------------------------------------------------------------

commutes=c(17,16,20,24,22,15,21,15,17,22)	#enters commutes into R
max(commutes)															#the maximum commutes time is
#[1] 24
mean(commutes)														#the average value is
#[1] 18.9
min(commutes)															#the minimum value is
#[1] 15
commutes[4]=18														#Replace 24 by 18
commutes																	#Print  the new vector
#[1] 17 16 20 18 22 15 21 15 17 22
mean(commutes)														#the new average
#[1] 18.3
sum(commutes>=20)						            	#How many times the commutes greater than equals to 20 minutes
#[1] 4
(sum(commutes<17)*100)/length(commutes)   #percentage of commutes that are less than 17
#[1] 30
#------------------------------------------------------------------------------------------------------------
#                                        Question 2.3
#------------------------------------------------------------------------------------------------------------
#Your cell phone bill varies from month to month. Suppose your year has the following monthly amounts
# 46 33 39 37 46 30 48 32 49 35 30 48
#Enter this data into a variable called bill. Use the sum command to ﬁnd the amount you spent this year on
#the cell phone. What is the smallest amount you spent in a month? What is the largest? How many months
#was the amount greater than $40? What percentage was this?
#------------------------------------------------------------------------------------------------------------
#                                         Answer 2.3
#------------------------------------------------------------------------------------------------------------
bill=c(46,33,39,37,46,30,48,32,49,35,30,48)		#Enters the cell phone bill into vector bill
sum(bill)								                  		#the total amount a year on the cell phone
#[1] 473
min(bill)									                  	#the minimum amount bill in a month
#[1] 30
max(bill)									                  	#the maximum amount bill in a month
#[1] 49
sum(bill>40)														    	#no of month bill greater than $40								
#[1] 5
(sum(bill>40)*100)/length(bill)								#percentage of  month's bill amount greater than $40
#[1] 41.66667

#------------------------------------------------------------------------------------------------------------
#                                        Question 2.4
#------------------------------------------------------------------------------------------------------------
# You want to buy a used car and ﬁnd that over 3 months of watching the classiﬁeds you see the following prices
#(suppose the cars are all similar)
#9000  9500  9400  9400 10000  9500 10300 10200
#Use R to ﬁnd the average value and compare it to Edmund’s (http://www.edmunds.com) estimate of $9500.
#Use R to ﬁnd the minimum value and the maximum value. Which price would you like to pay?
#------------------------------------------------------------------------------------------------------------
#                                         Answer 2.4
#------------------------------------------------------------------------------------------------------------
car= c(9000,9500,9400,9400,10000,9500,10300,10200)	#Enter prices to vector car
Average= mean(car)												          #find average
#Average= 9662.5
Average-car[2]                                      #comparing average value with Edmund's estimate 9500
#[1] 162.5                                          #average value is higher than Edmund's estimate 9500 
min(car)															             	#The minimum value is	
#[1] 9000
max(car)													            			#The maximum value is
#[1] 10300

#------------------------------------------------------------------------------------------------------------
#                                        Question 2.5
#------------------------------------------------------------------------------------------------------------
# Try to guess the results of these R commands. Remember, the way to access entries in a vector is with [].
#Suppose we assume
#> x = c(1,3,5,7,9)
#> y = c(2,3,5,7,11,13)

#1. x+1
#2. y*2
#3. length(x) and length(y)
#4. x + y
#5. sum(x>5) and sum(x[x>5])
#6. sum(x>5 | x< 3) # read | as ’or’, & and ’and’
#7. y[3]
#8. y[-3]
#9. y[x] (What is NA?)
#10. y[y>=7]
#------------------------------------------------------------------------------------------------------------
#                                         Answer 2.5
#------------------------------------------------------------------------------------------------------------
x=c(1,3,5,7,9)
y=c(2,3,5,7,11,13)
x+1																	#Add 1 to each value of X
#[1]  2  4  6  8 10
y*2																	#Multiplies 2 to each value of y
#[1]  4  6 10 14 22 26
length(x)												  	#no of elements in vector x
#[1] 5
length(y)														#no of elements in vector y
#[1] 6
x+y                                 #Add x and y (with corresponding values)
#[1]  3  6 10 14 20 14
sum(x>5)											     	#no of numbers which are greater than 5
#[1] 2
sum(x[x>5])													#Add numbers which are greater than 5
#[1] 16
sum(x>5|x<3)												#nos of number which are greater than 5 or less than 3
#[1] 3
y[3]																#value of 3rd index of Y Vector
#[1] 5
y[-3]                               #all values of Y except value of 3rd index
#[1]  2  3  7 11 13
y[x]                                #values of Y by taking x values as index
#[1]  2  5 11 NA NA                 #NA means value is not available in that index
y[y>=7]															#values of Y vector which are greater than or equal to 7
#[1]  7 11 13

#------------------------------------------------------------------------------------------------------------
#                                        Question 2.6
#------------------------------------------------------------------------------------------------------------
#Let the data x be given by
#> x = c(1, 8, 2, 6, 3, 8, 5, 5, 5, 5)
#Use R to compute the following functions. Note, we use X1 to denote the ﬁrst element of x (which is 0) etc.
#1. (X1 + X2 + • • • + X10)/10 (use sum)
#2. Find log10(Xi) for each i. (Use the log function which by default is base e)
#3. Find (Xi − 4.4)/2.875 for each i. (Do it all at once)
#4. Find the diﬀerence between the largest and smallest values of x. (This is the range. You can use max and
#min or guess a built in command.)

#------------------------------------------------------------------------------------------------------------
#                                         Answer 2.6
#------------------------------------------------------------------------------------------------------------
x=c(1,8,2,6,3,8,5,5,5,5)								         #enters values into vector x
sum(x)/10
#[1] 4.8
log10(x)																				#log10(Xi) for each i																				
#[1] 0.0000000 0.9030900 0.3010300 0.7781513 0.4771213 0.9030900 0.6989700 0.6989700
#[9] 0.6989700 0.6989700
(x-4.4)/2.875
#[1] -1.1826087  1.2521739 -0.8347826  0.5565217 -0.4869565  1.2521739  0.2086957
#[8]  0.2086957  0.2086957  0.2086957
max(x)-min(x)													         	#the difference between the largest and smallest values of x
#[1] 7
diff(range(x)	)												        	#the difference between the largest and smallest values of x using built in function
#[1] 7
