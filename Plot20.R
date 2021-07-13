setwd('D:/DoAnNNLTR')
library(data.table)  
files = list.files(pattern = ".csv")
temp = lapply(files, fread, sep=",")
df = rbindlist( temp, fill=TRUE)
names(df)
View(df)
str(df)
newyork = df[Province_State=='New York']
newyork
library(ggplot2)
ggplot(newyork, aes(x=Last_Update, y=Confirmed))+
  geom_col(aes(fill=Confirmed))+
  labs(title="D??? TH??? TH??? HI???N S??? CA M???C COVID19 T???I NEW YORK D???N NAY",
       x='Th???i gian',
       y='S??? cac m???c')
