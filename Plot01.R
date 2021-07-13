setwd('D:/')
df = read.csv('global.csv', header = TRUE)
df
names(df)
df$state = paste(df$Province.State, df$Country.Region)
df$state
library(dplyr)
df1 = select(df, state, X1.23.20)
df1
newdf = filter(df1, X1.23.20>0)
newdf
str(newdf)
library(ggplot2)
ggplot(newdf, aes(x=X1.23.20,y=state))+
  geom_col(aes(x=X1.23.20, y=state, fill = state))+
  labs(x='S??? ca m???c',
       y='Khu v???c',
       title = 'T???NG S??? CA M???C COVID TÍNH D???N NGÀY 23-01-2020')
