setwd("D:/DoAnNNLTR")
getwd()
library(data.table)
library(ggplot2)
library(ggrepel)
library(forcats)
library(dplyr)
df = read.csv('05-19-2021.csv', header = TRUE)
str(df)
View(df)
names(df)
library(dplyr)
df$Province_State
a = df$Province_State[21:30]
b = df$Confirmed[21:30]
haha = data.frame(state = a, conf = b)
haha
sum(haha$conf)
haha$phan_tram = (format(round((haha$conf / sum(haha$conf)), 2), nsmall = 2))
haha$phan_tram <- as.numeric(haha$phan_tram)*100
huhu = haha %>% 
  mutate(csum = rev(cumsum(rev(phan_tram))), 
         pos = phan_tram/2 + lead(csum, 1),
         pos = if_else(is.na(pos), phan_tram/2, pos))
huhu
library(ggplot2)
ggplot(haha, aes(x = "" , y = phan_tram, fill = state)) +
  geom_col(width = 1, color = 'black') +
  coord_polar('y') +
  geom_label_repel(data = huhu,
                   aes(y = pos, label = paste0(phan_tram, "%")),
                   size = 4.5, nudge_x = 0.65, show.legend = FALSE) +
  labs(title='BI???U D??? TH??? HI???N T??? L??? M???C COVID19 C???A M???T S??? BANG ??? M??? NGÀY 19-05-2021')+
  theme_void()
