# Introduction to R <h1>
Repository to document the Introduction to R Language carried out in the 2nd semester of the Data Science and Machine Learning course. <br>
The work to be performed in this repository is as follows:

#1 - Document all created, or developed, code and relevant documents generated during the semester;

#2 - Apply the knowledge gained during the semester into a "real case";

#3 - Create a professional esque presentation;

#4 - Bulk up the usage of different tools.

# The chosen database <h5>
<p> The dataset was chosen for this project was found in kaggle, was created and is maintained by Andreu Vall Hernàndez, the last update (or version) was uploaded on 25th July 2022. This dataset has the purpose to show the information scraped from the website MyanimeList, a.k.a MAL, the information scraped varies from the id the anime has on MAL platform, the weighted score given by the users of the site, if the anime is SFW (Safe For Work), just to name a few. </p>
<p> From the same dataset you can gather information for animes and mangas, but for this analysis we are going to use only the anime data. Some of the chosen data was: </p>
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
  
# Cleaning the data <h5>
<p>As all things in life the dataset is not perfect and for that we need to clean it just a little bit, for that all we need to do is:<br></p>
  <ul>
    <li>First delet all NA's from the dataset</li>
    <li>Then change SFW from "True" and "False" to 0 and 1</li>
    <li>After that scale the numbers in Members and Favorites by 1000</li>
    <li>Lastly create a new column called hype, which is the % of users who add the anime to their favorites list</li>
</ul>
  <p>After all this it's time to do some analysis and to plot the graphs.
  
# The analysis <h5>
<p> With all this data in hand it's time to work on it, to create some kind of information.</p>
<p> Firstly we would analise the score, of any given anime, given some other parameters, as such we need to see if there is some correlation between the score of an anime and the total number of users who added it to their lists.</p>

![Score_favorites](https://github.com/gabriextremo/Introducao-a-R/assets/48864607/c585a4bf-1937-46dd-97a2-af5f3cee7bda)
 <br>
<p>Then let's se how a score affects the number of users who really liked a anime.</p>
  
![Score_hype](https://github.com/gabriextremo/Introducao-a-R/assets/48864607/15304ec1-8a8c-40f6-964f-b495de79f6c6)

<p>Given this information we can already see some patterns starting to form, such as, the higher the score more users are going to like the anime. But that's not enough for us, let's dive a little deeper in the data.</p>
  
<p>Now let's see the hype in correlation with it's starting season.</p>
  
![Hype_startSeason](https://github.com/gabriextremo/Introducao-a-R/assets/48864607/de79dc95-c542-458b-a2df-f73c2d710a76)
 
<p> How about the number of members given a starting_season, and let's see how many of those are SFW?</p>
  
![members_startSeason-sfw](https://github.com/gabriextremo/Introducao-a-R/assets/48864607/bd1fb30b-fb7a-440d-a810-5976b723b1b8)

<p>Let's see the score given the target demographic.</p>
  
![score_demographics](https://github.com/gabriextremo/Introducao-a-R/assets/48864607/94f72599-6316-4b46-8a7c-2d6395190adf)

<p>And while we are here let's see the hype for the demographics.</p>
  
![hype_demographics](https://github.com/gabriextremo/Introducao-a-R/assets/48864607/eea9c2d6-f5a2-4475-93f2-50026c233345)

<p>Now we can really take some decisions, or at least make some educated guess, to which season is better to publish an anime or maybe which demographic to target, and we can, for sure, see which animes are more likely to be liked by the users. But is this really all that we need to take these conclusions? </p>  
<p> Let's add some extra information in this and then take those conclusions. Shall we.</p>
  
![hype_type-sfw](https://github.com/gabriextremo/Introducao-a-R/assets/48864607/c4882223-aea6-499a-b4fc-396af9013d44)
  <br>
![score_type](https://github.com/gabriextremo/Introducao-a-R/assets/48864607/3115f83c-f597-4b34-80ed-234fe1998e16)
  <br>
![score_type=start_season](https://github.com/gabriextremo/Introducao-a-R/assets/48864607/c439cf41-d0a4-49c6-9d37-74530e006ca8)
  <br>
![type_members=start_season](https://github.com/gabriextremo/Introducao-a-R/assets/48864607/5d9239fe-d0b0-4623-9a77-5a4f3174e507)
  <br>
<p> Big difference right? Now we can say for sure when is the right season, demographics, type of media and if it should be SFW or NSFW, for better engagement and overall more sucess. <br>
  So when do you think would be the better time and niche to make a sucessful anime?</p>
