setwd("D:/DoAnNNLTR")
getwd()
library(data.table)
library(ggplot2)
library(ggrepel)
library(forcats)
library(dplyr)
df = read.csv('03-03-2021.csv', header = TRUE)
str(df)
View(df)
names(df)
ggplot(df, aes(x=Deaths, y=Province_State, fill=Deaths)) + 
  geom_point(aes(fill=Deaths)) + 
  labs(title='D??? TH??? TH??? HI???N S??? CA T??? VONG DO COVID19 T???I M???T S??? BANG ??? M??? NGÀY 03-03-2021',
       X='S??? ngu???i ch???t',
       y='Khu v???c')
