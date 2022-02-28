library(ggplot2)
library(magrittr)
library(tidyverse)
library(reshape2)
df = read.csv('StudentsPerformance.csv')

#grafico de barra
medias = df %>%
  select(gender, math.score:writing.score) %>%
  group_by(gender) %>%
  summarise(across(math.score:writing.score, mean, na.rm = TRUE))

medias = medias %>%
  select( gender, math.score:writing.score)%>%
  pivot_longer(cols=c('math.score', 'reading.score', 'writing.score'), names_to='variable', 
               values_to="value")


ggplot(medias, mapping = aes(x = gender, y =value, fill = variable )) +
  geom_bar(stat='identity', position='dodge')+
  scale_fill_manual(values=c("#999999", "#E69F00", "#56B4E9"))+
  theme_minimal()

#scatter plot

ggplot(df, aes(parental.level.of.education, math.score, color = gender)) +
  geom_boxplot()
