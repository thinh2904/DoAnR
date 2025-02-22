setwd("D:/DoAnNNLTR")
getwd()
library(data.table)
library(ggplot2)
library(ggrepel)
library(forcats)
library(dplyr)
df = read.csv('03-03-2021.csv', header = TRUE)
str(df)
View(df)
names(df)
df$Province_State
a = df$Province_State[31:40]
b = df$Deaths[31:40]
haha = data.frame(state = a, death = b)
haha
sum(haha$death)
haha$phan_tram = (format(round((haha$death / sum(haha$death)), 2), nsmall = 2))
haha$phan_tram <- as.numeric(haha$phan_tram)*100
huhu = haha %>% 
  mutate(csum = rev(cumsum(rev(phan_tram))), 
         pos = phan_tram/2 + lead(csum, 1),
         pos = if_else(is.na(pos), phan_tram/2, pos))
huhu
ggplot(haha, aes(x = "" , y = phan_tram, fill = state)) +
  geom_col(width = 1, color = 'black') +
  coord_polar('y') +
  geom_label_repel(data = huhu,
                   aes(y = pos, label = paste0(phan_tram, "%")),
                   size = 4.5, nudge_x = 0.65, show.legend = FALSE) +
  labs(title='BI???U D??? TH??? HI???N T??? L??? T??? VONG DO COVID19 C???A M???T S??? BANG ??? M??? NG�Y 03-03-2021')+
  theme_void()
