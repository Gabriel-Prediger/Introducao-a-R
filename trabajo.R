install.packages('dslabs')
install.packages('dplyr')
install.packages('tidyverse')
library('dslabs')
library('dplyr')
library('tidyverse')
#Pegando o dataset
Anime <- read.csv2("anime.csv", sep=",", dec=".")

# Pegando apenas as informações relevantes para a analise
mal <- Anime %>% select(score, scored_by, members, favorites, rating, sfw, start_season, demographics, studios, title_english)
str(myanimelist)
mal

# "Limpando" as informações
mal <- mal %>% mutate(sfw = case_when(sfw =='True'~ 1, sfw =='False'~ 0))

# Alguns plots exploratorios
hist(mal$score)

fansDCarteirinha <- mal$favorites/mal$scored_by

unique(mal$demographics)

boxplot(mal$score ~ mal$demographics)
boxplot(mal$score ~ mal$start_season)


ggplot(data=mal) + geom_point(mapping=aes(x=members, y=start_season)) + facet_wrap(~ sfw, nrow=2)
ggplot(data=mal) + geom_point(mapping = aes(x=score, y =demographics))
