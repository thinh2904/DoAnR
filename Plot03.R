setwd('D:/DoAnNNLTR')
files = list.files(pattern = ".csv")
temp = lapply(files, fread, sep=",")
df = rbindlist( temp, fill=TRUE)
names(df)
View(df)
str(df)
cali = df[Province_State=='California']
cali
library(ggplot2)
ggplot(cali, aes(x=Last_Update, y=Deaths)) + 
  geom_line(size=1.5,
            color='blue') +
  labs(title="D??? TH??? TH??? HI???N S??? NGU???I T??? VONG DO COVID19 T???I CALIFORNIA D???N NAY",
       x='Th???i gian',
       y='S??? ngu???i ch???t')
