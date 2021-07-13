setwd('D:/')
df = read.csv('global_reco.csv', header = TRUE)
View(df)
str(df)
df$state = paste(df$Province.State, df$Country.Region)
df$state
library(dplyr)
df1 = select(df, state, X1.24.20)
df1
newdf = filter(df1, X1.24.20>0)
newdf
str(newdf)
library(ggplot2)
ggplot(newdf, aes(x=X1.24.20,y=state))+
  geom_col(aes(x=X1.24.20, y=state, fill = state))+
  labs(x='S??? ca kh???i',
       y='Khu v???c',
       title = 'T???NG S??? CA KH???I B???NH COVID TÍNH D???N NGÀY 24-01-2020')

