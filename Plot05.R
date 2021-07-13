setwd("D:/DoAnNNLTR")
getwd()
df = read.csv('04-29-2021.csv', header = TRUE)
str(df)
names(df)
library(dplyr)
df$Province_State
a = df$Province_State[11:20]
b = df$Confirmed[11:20]
haha = data.frame(state = a, conf = b)
haha
library(ggplot2)
ggplot(haha, aes(x=state,y=conf))+
  geom_col(aes(fill=state))+
  labs(title='BI???U D??? TH??? HI???N S??? CA M???C COVID19 C???A M???T S??? BANG T???I M??? NGÀY 29-04-2021',
       x='Khu v???c',
       y='S??? ngu???i m???c')
