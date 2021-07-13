setwd('D:/DoAnNNLTR')
library(data.table) 
files = list.files(pattern = ".csv")
temp = lapply(files, fread, sep=",")
df = rbindlist( temp, fill=TRUE)
names(df)
View(df)
str(df)
michigan = df[Province_State=='Michigan']
michigan
library(ggplot2)
ggplot(michigan, aes(x=Last_Update, y=Deaths)) + 
  geom_point(colour = "red") + 
  labs(title="D??? TH??? TH??? HI???N S??? NGU???I T??? VONG DO COVID19 T???I MICHIGAN D???N NAY",
       x='Th???i gian',
       y='S??? ngu???i ch???t')
