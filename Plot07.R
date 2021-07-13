setwd("D:/DoAnNNLTR")
getwd()
df = read.csv('04-22-2021.csv', header = TRUE)
str(df)
View(df)
names(df)
library(dplyr)
df$Province_State
a = df$Province_State[1:15]
b = df$Deaths[1:15]
haha = data.frame(state = a, deth = b)
haha
library(ggplot2)
ggplot(haha, aes(x=deth,y=state))+
  geom_col(aes(fill=state))+
  labs(title='BI???U D??? TH??? HI???N S??? NGU???I T??? VONG DO COVID19 C???A M???T S??? BANG T???I M??? NGÀY 22-04-2021',
       x='S??? ngu???i ch???t',
       y='Khu v???c')
