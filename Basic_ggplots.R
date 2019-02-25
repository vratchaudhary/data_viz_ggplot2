library(ggplot2)
library(dplyr)
library(datasets)
####################
chick<-datasets::ChickWeight
###########
head(chick)
str(chick)
##data summary in histograms
ggplot(chick, aes(weight))+
  geom_histogram(binwidth=50, color='red', fill='pink')+
  theme_bw(base_size = 13)
  ylab("Number of chicken")+
  xlab("Chickn weight in grams")
  
##########We want to see the relation between diet and weight
  ##through mean and variance
  ggplot(chick, aes(Diet, weight))+
   geom_boxplot(aes(fill=Diet))+
    theme_bw(base_size = 13)+
  ylab("Diet of chicken")+
    xlab("Chickn weight in grams")
  
  ######################
  ##3. We want to see if chicken weight depend on any of the factors
  ##so we can run simple linear models for each of the factor
  
ggplot(chick, aes(Time,weight, group=Diet))+
  geom_smooth(aes(color=Diet,fill=Diet))+
    theme_bw(base_size = 13)+
    ylab("Chickn weight in grams")+
    xlab("Time of weight")
  
