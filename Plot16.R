setwd('D:/DoAnNNLTR')
library(data.table)  
files = list.files(pattern = ".csv")
temp = lapply(files, fread, sep=",")
df = rbindlist( temp, fill=TRUE)
names(df)
View(df)
str(df)
ohio = df[Province_State=='Ohio']
ohio
library(ggplot2)
ggplot(ohio, aes(x=Last_Update, y=Deaths))+
  geom_line(size = 2, color = 'green')+
  labs(title="D??? TH??? TH??? HI???N S??? NGU???I T??? VONG DO COVID19 T???I OHIO D???N NAY",
       x='Th???i gian',
       y='S??? ngu???i ch???t')
