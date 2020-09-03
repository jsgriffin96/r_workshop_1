#Basic Functions
1+1

2*2

2^3

result <- 3*2

text <- "This is a great R workshop!"

print(text)

sample.vector <- c(1,2,3)


temperatures <- c(75,76,80,78,73,71,69)
names(temperatures) <- c('Mon','Tues','Wed','Thurs','Fri','Sat','Sun')
temperatures

over.74 <- temperatures>74
over.74

temperatures[over.74]
temps.over.74 <- temperatures[over.74]


which.max(temperatures)
temperatures[which.max(temperatures)]

temperatures.DF<-as.data.frame(temperatures)

#Data Frames
name<-c('Bim','Jillian','Patrick','Grant')
age<-c(24,21,24,19)
iq<-c(480,210,200,5)
standing<-c('Super Senior','Senior','Super Senior','Sophomore')

eboard.df<-data.frame(name,age,iq,standing)

is.data.frame(eboard.df)

mean(eboard.df$age)
mean(eboard.df$iq)


#More Data Frames
library(dplyr)
car_df<-read.csv("car_data.csv")

colnames(car_df)[1] <-"model" #rename first col

performance<-car_df$hp/car_df$wt

car_df<-cbind.data.frame(performance,car_df)

round(mean(car_df$mpg),2)
mean(car_df$mpg)
#Average MPG for cars with 6 and 4 cyl

6cylMPG #Why is this an error?

six.cyl.cars <- subset(car_df, cyl == 6)

four.cyl.cars <- subset(car_df, cyl == 4)

six.cyl.avg.mpg <- mean(six.cyl.cars$mpg)
four.cyl.cars.mpg <- mean(four.cyl.cars$mpg)

six.cyl.avg.mpg>four.cyl.cars.mpg
six.cyl.avg.mpg<four.cyl.cars.mpg



#write.csv(car_df,"car_data.csv")

#GGPLOT https://rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf
#Play with these:
#install.packages("ggplot2")
library(ggplot2)

ggplot(car_df,aes(model,mpg))+
  geom_bar(stat="identity")+
  labs(y="MPG",x="Model")


ggplot(car_df,aes(model,mpg))+
  geom_bar(stat="identity")+
  labs(y="MPG",x="Model")+
  theme(axis.text.x = element_text(angle = 60, hjust = 1))




