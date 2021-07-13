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
ggplot(newyork, aes(x=Last_Update, y=Deaths))+
  geom_col(aes(fill=Deaths))+
  labs(title="D??? TH??? TH??? HI???N S??? NGU???I T??? VONG DO COVID19 T???I NEW YORK D???N NAY",
       x='Th???i gian',
       y='S??? ngu???i ch???t')
