setwd('D:/DoAnNNLTR')
library(data.table)  
files = list.files(pattern = ".csv")
temp = lapply(files, fread, sep=",")
df = rbindlist( temp, fill=TRUE)
names(df)
View(df)
str(df)
texas = df[Province_State=='Texas']
texas
library(ggplot2)
ggplot(texas, aes(x=Last_Update, y=Confirmed))+
  geom_line(size=2, color='purple')+
  labs(title="D??? TH??? TH??? HI???N S??? CA M???C COVID19 T???I TEXAS D???N NAY",
       x='Th???i gian',
       y='S??? ca m???c')
