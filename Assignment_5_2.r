#Question3.1

data1 = c(60, 85, 72, 59, 37, 75, 93, 7, 98, 63, 41, 90, 5, 17, 97)
# data1 = c(60, 85, 72, 59, 37, 75, 93, 7, 98, 63, 41, 90, 5, 17, 97)
stem(data1)
#The decimal point is 1 digit(s) to the right of the |

0 | 577
2 | 7
4 | 19
6 | 0325
8 | 50378

#Question3.2

data2 = c(80, 82, 88, 91, 91, 95, 95, 97, 98, 101, 106, 106, 109, 110, 111)
#data2 = c(80, 82, 88, 91, 91, 95, 95, 97, 98, 101, 106, 106, 109, 110, 111)
hist(data2)

#Question3.3
xran = rnorm(100)
#xran = rnorm(100)
hist(xran)
yran = rnorm(100)
#yran = rnorm(100)
hist(yran)
# I got the difference between these two.

#Question3.4
#Make a histogram and boxplot of these data sets from these Simple data sets: south, crime and aid. Which of
#these data sets is skewed? Which has outliers, which is symmetric.
install.packages("UsingR")

library(UsingR)
data(south)

class(south)

# [1] "numeric"

summary(south)
#   Min.   1st Qu.   Median   Mean 3rd Qu.  Max.
#   6.00   10.25     12.00    13.97 15.50   33.00

hist(south)
boxplot(south)

#   south is skewed, with outliers

data(crime)

class(crime)
#[1] "data.frame"

summary(crime)
#     y1983           y1993
# Min.    :53.7    Min.   :83.3
# 1st  Qu.:145.4   1st Qu.:328.8
# Median  :397.9   Median :535.5
# Mean    :437.5   Mean   :606.8
# 3rd  Qd.:553.0   3rd Qd.:758.1
# Max.    :1985.4  Max.   :2832.8

c1 <- as.numeric(crime[[1]])
c2 <- as.numeric(crime[[2]])
hist(c1)
boxplot(c1)

data(aid)

summary(aid)

# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 42.29   95.28  114.23  123.59  144.56  253.54 

class(aid)

# [1] "numeric"

hist(aid)

boxplot(aid)

#Question3.5
#For the Simple data sets bumpers, firstchi, math make a histogram. Try to predict the mean, median and
#standard deviation. Check your guesses with the appropriate R commands.
install.packages("UsingR")

library(UsingR)

data(bumpers)

hist(bumpers)

mean(bumpers)
#[1] 2122.478

median(bumpers)
#[1] 2129

sd(bumpers)
#[1] 798.4574

data(firstchi)
hist(firstchi)

mean(firstchi)
#[1] 23.97701

median(firstchi)
#[1] 23

sd(firstchi)
#[1] 6.254258


data(math)
hist(math)


mean(math)
#[1] 54.9


median(math)
#[1] 54


sd(math)
#[1] 9.746264


#Question3.6


failures <- c(0, 1, 0, NA, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, 1)

table(failures, useNA='always')
#failures
0    1    2    3 <NA> 
  15    5    1    1    1


mean(failures)
#[1] NA


mean(failures, na.rm=T)
#[1] 0.4545455



#Question3.7
#The Simple dataset pi2000 contains the first 2000 digits of pie. Make a histogram. Is it surprising? Next, find
#the proportion of 1's, 2's and 3's. Can you do it for all 10 digits 0-9?

install.packages("UsingR")

library(UsingR)

data(pi2000)

summary(pi2000)
#  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 0.000   2.000   5.000   4.546   7.000   9.000 

hist(pi2000)
simple.freqpoly(pi2000)

table(pi2000)
#pi2000
#  0   1   2   3   4   5   6   7   8   9 
# 181 213 207 189 195 205 200 197 202 211 


table(pi2000)/length(pi2000)
#pi2000
#     0      1      2      3      4      5      6      7      8      9 
#     0.0905 0.1065 0.1035 0.0945 0.0975 0.1025 0.1000 0.0985 0.1010 0.1055



#Question3.8
#Fit a density estimate to the Simple dataset pi2000 .

install.packages("UsingR")

library(UsingR)
data(pi2000)

hist(pi2000, 10, prob=T)
lines(density(pi2000, bw=0.2), col='red')

#Question3.9 
#Find a graphic in the newspaper or from the web. Try to use R to produce a similar figure.
#Viewership comparison of TV Channel.
install.packages("dplyr")
install.packages("ggplot2")
library(dplyr)
library(ggplot2)
data <- data.frame(Channel=c("ABP","ABP","RepublicTV","Ajtak","ABP","RepublicTV","Ajtak","India","RepublicTV","ABP","DD","India","Ajtak"),b=1:13)
data <- data %>% 
group_by(Channel) %>% 
count() %>% 
ungroup() %>% 
mutate(per=`n`/sum(`n`)) %>% 
arrange(desc(Channel))
data$label <- scales::percent(data$per)
ggplot(data=data)+
geom_bar(aes(x="", y=per, fill=Channel), stat="identity", width = 1)+
coord_polar("y", start=0)+
theme_void()+
geom_text(aes(x=1, y = cumsum(per) - per/2, label=label))

