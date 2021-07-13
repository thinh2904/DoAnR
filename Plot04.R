setwd("D:/DoAnNNLTR")
getwd()
df = read.csv('04-29-2021.csv', header = TRUE)
str(df)
names(df)
library(dplyr)
df$Province_State
a = df$Province_State[1:10]
b = df$Deaths[1:10]
haha = data.frame(state = a, deaths = b)
haha
library(ggplot2)
ggplot(haha, aes(x=state,y=deaths))+
  geom_col(aes(fill=state))+
  labs(title='BI???U D??? TH??? HI???N S??? CA T??? VONG C???A M???T S??? BANG T???I M??? NGÀY 29-04-2021',
      x='Khu v???c',
      y='S??? ngu???i ch???t')
