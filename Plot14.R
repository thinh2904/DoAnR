setwd("D:/DoAnNNLTR")
getwd()
library(data.table)
library(ggplot2)
library(ggrepel)
library(forcats)
library(dplyr)
df = read.csv('04-29-2021.csv', header = TRUE)
str(df)
View(df)
names(df)
ggplot(df, aes(x=Case_Fatality_Ratio, y=Province_State, fill=Case_Fatality_Ratio)) + 
  geom_point(aes(fill=Case_Fatality_Ratio)) + 
  labs(title='D??? TH??? TH??? HI???N T??? L??? T??? VONG DO COVID19 T???I M???T S??? BANG ??? M??? NGÀY 29-04-2021',
       X='S??? ngu???i ch???t',
       y='Khu v???c')
