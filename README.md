# Introduction to R <h1>
Repository to document the Introduction to R Language carried out in the 2nd semester of the Data Science and Machine Learning course. <br>

The work to be performed in this repository is as follows:
  
#1 - Document all created, or developed, code and relevant documents generated during the semester;

#2 - Apply the knowledge gained during the semester into a "real case";

#3 - Create a professional esque presentation;

#4 - Bulk up the usage of different tools.

# The chosen database <h5>
<p> The dataset was chosen for this project was found in kaggle, was created and is maintained by Andreu Vall Hernàndez, the last update (or version) was uploaded on 25th July 2022. This dataset has the purpose to show the information scraped from the website MyanimeList, a.k.a MAL, the information scraped varies from the id the anime has on MAL platform, the wighted score given by the users of the site, if the anime is SFW (Safe For Work), just to name a few. <p>
<p> From the same dataset you can gather information for animes and mangas, but for this analysis we are going to use only the anime data. Some of the chosen data are: <p>
#1 Title; <br>
#2 Score; <br>
#3 Scored_by; <br>
#4 Members; <br>
#5 Favorites; <br>
#6 Rating; <br>
#7 SFW; <br>
#8 Start_season; <br>
#9 Genres; <br>
#10 Themes; <br>
#11 Demografics; <br>
#12 Title_english. <br>
  
![Sample_of_Data](https://github.com/gabriextremo/Introducao-a-R/assets/48864607/5a807a95-8465-4a66-8ea2-f0fdc8b06be4)
  

# The analysis <h5>
<p> With all this data in hand it's time to work on it, to create some kind of information.<p>
<p> Firstly we would analise the score, of any given anime, given some other parameters, as such we need to see if there is some correlation between the score of an anime and the total number of users who added it to their lists<p>
![](https://github.com/gabriextremo/Introducao-a-R/assets/48864607/b055d0f7-c706-423d-a6e1-cfc84c4a46e3)

<p><p>
