setwd('D:/')
df = read.csv('global.csv', header = TRUE)
View(df)
library('ggplot2')
tl = df[249,5:ncol(df)]
str(tl)
ngay = ncol(tl)
conf <- c(1:ncol(tl))

for (i in conf){
  conf[i] <- tl[[i]]
}
conf
a = conf[(ngay-30):ngay]
a
ten = names(tl)
b = ten[(ngay-30):ngay]
b
data = data.frame(ngay=b, conf=a)
data
ggplot(data, aes(x=conf, y=ngay, fill=conf))+
  geom_col(aes(color=conf))+
  labs(x='S??? ca',
       title="BI???U D� TH??? HI???N S??? CA M???C COVID C???A TH�I LAN TRONG 30 NG�Y G???N D�Y",
       y='Ng�y')
