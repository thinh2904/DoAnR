df = read.csv('global.csv', header = TRUE)
library('ggplot2')
vn = df[275,5:ncol(df)]
head(vn)
str(vn)
ngay = ncol(vn)
conf <- c(1:ncol(viet_nam))

for (i in conf){
  conf[i] <- vn[[i]]
}
conf
a = conf[(ngay-30):ngay]
a
ten = names(vn)
b = ten[(ngay-30):ngay]
b
data = data.frame(ngay=b, conf=a)
data
ggplot(data, aes(x=conf, y=ngay))+
  geom_col(aes(fill=conf))+
  labs(title="BI???U DÒ TH??? HI???N S??? CA M???C COVID C???A VI???T NAM TRONG 30 NGÀY G???N DÂY",
       X='s??? ca',
       y='Ngày')
