# Instalando as bibliotecas necessarias para o trabalho
install.packages('dslabs')
install.packages('dplyr')
install.packages('tidyverse')
library('dslabs')
library('dplyr')
library('tidyverse')
options(digits=5)

#Pegando o dataset
Anime <- read.csv2("anime.csv", sep=",", dec=".")

# Pegando apenas as informações relevantes para a analise
mal <- Anime %>% select(score, scored_by, members, favorites, rating, sfw, start_season, demographics, studios, title_english, type)

# Limpando as informações
mal <- na.omit(mal)
mal <- mal %>% mutate(sfw = case_when(sfw =='True'~ 1, sfw =='False'~ 0))
# Escalando o numero de membros e favoritos em mil
mal <- mal %>% mutate(members = members/1000)
mal <- mal %>% mutate(favorites = favorites/1000)
mal <- mal %>% mutate(hype = mal$favorites*100/mal$members)
mal <- na.omit(mal)

#plots para os graficos
ggplot(data=mal) + geom_point(mapping = aes(x=score, y=favorites, color=sfw))

ggplot(data=mal) + geom_point(mapping = aes(x=score, y=hype))

ggplot(data=mal) + geom_point(mapping = aes(x=hype, y=start_season))

ggplot(data=mal) + geom_point(mapping = aes(x = members, y = start_season,  color=sfw)) + facet_wrap(~ sfw, nrow = 2)

ggplot(data=mal) + geom_point(mapping = aes(x = score, y = demographics, color=demographics))

ggplot(data=mal) + geom_point(mapping = aes(x=hype, y=demographics))

ggplot(data=mal) + geom_point(mapping = aes(x = hype, y= type, color=sfw))

ggplot(data=mal) + geom_point(mapping= aes(x=score, y=type))

ggplot(data=mal) + geom_point(mapping= aes(x=score, y=type,color=type)) + facet_wrap(~start_season)

ggplot(data=mal) + geom_point(mapping= aes(x=type, y=members, color=type)) + facet_wrap(~start_season)
