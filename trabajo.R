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
mal <- Anime %>% select(score, scored_by, members, favorites, rating, sfw, start_season, demographics, studios, title_english)
str(myanimelist)
mal <- na.omit(mal)

# "Limpando" as informações
mal <- mal %>% mutate(sfw = case_when(sfw =='True'~ 1, sfw =='False'~ 0))
mal <- mal %>% mutate(members = members/1000)
mal <- mal %>% mutate(favorites = favorites/1000)
mal <- mal %>% mutate(hype = mal$favorites/mal$members*100)

mal$hype
max(mal$hype)
view(mal)
# Alguns plots exploratorios
hist(mal$score)

unique(mal$studios)

#boxplots
boxplot(mal$score ~ mal$demographics)
boxplot(mal$score ~ mal$start_season)

#ggplots
ggplot(data=mal) + geom_point(mapping = aes(x=score, y=favorites, color=sfw))
ggplot(data=mal) + geom_point(mapping = aes(x=hype, y=start_season))

ggplot(data=mal) + geom_point(mapping = aes(x = members, y = start_season)) + facet_wrap(~ sfw, nrow = 2)
ggplot(data=mal) + geom_point(mapping = aes(x = score, y = demographics))
ggplot(data=mal) + geom_point(mapping = aes(x = sfw, y = score))

ggplot(data=mal) + geom_point(mapping = aes(x=members, y = favorites))

#smoth
ggplot(data=mal) + geom_smooth(mapping = aes(x=score, y=hype))
