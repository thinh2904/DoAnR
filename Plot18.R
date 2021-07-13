setwd("D:/DoAnNNLTR")
getwd()
library(ggplot2)
df = read.csv('04-29-2021.csv', header = TRUE)
str(df)
View(df)
names(df)
a = df$Province_State[1:15]
b = df$Case_Fatality_Ratio[1:15]
b
haha = data.frame(state = a, race = b)
haha
ggplot(haha, aes(x=race, y=state,fill=race)) + 
  geom_point(aes(color=race)) + 
  labs(x='T??? l???',
       title='D??? TH??? TH??? HI???N T??? L??? T??? VONG DO COVID19 T???I M???T S??? BANG ??? M??? NGÀY 29-04-2021',
       y='Khu v???c')
