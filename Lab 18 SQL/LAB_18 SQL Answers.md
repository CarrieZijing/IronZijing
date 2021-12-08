![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)
# Lab | My first queries

Please, connect to the Data Bootcamp Google Database using the credentials provided in class. Choose the database called *appleStore*. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. What are the different genres?**
'Games'
'Productivity'
'Weather'
'Shopping'
'Reference'
'Finance'
'Music'
'Utilities'
'Travel'
'Social Networking'
'Sports'
'Business'
'Photo & Video'
'Navigation'
'Entertainment'
'Education'
'Lifestyle'
'Food & Drink'
'News'
'Health & Fitness'
'Medical'
'Book'

**2. Which is the genre with the most apps rated?**
Medical (with average rate: 4.5)

**3. Which is the genre with most apps?**
Games (with 169 apps)

**4. Which is the one with least?**
Medical (with 1 app)

**5. Find the top 10 apps most rated.**
'Facebook','2974676'
'Pandora - Music & Radio','1126879'
'Pinterest','1061624'
'Bible','985920'
'Angry Birds','824451'
'Fruit Ninja Classic','698516'
'Solitaire','679055'
'PAC-MAN','508808'
'Calorie Counter & Diet Tracker by MyFitnessPal','507706'
'The Weather Channel: Forecast, Radar & Alerts','495626'

**6. Find the top 10 apps best rated by users.**
Not limited to the apps below, since more than 10 apps have rating at 5
'J&J Official 7 Minute Workout','5'
'Fragment\'s Note','5'
'Dragon Island Blue','5'
'Fieldrunners 2','5'
'Sworkit - Custom Workouts for Exercise & Fitness','5'
'Pumped: BMX','5'
'Headspace','5'
'Timeshare+','5'
'Infect Them All : Vampires','5'
'Daily Audio Bible App','5'

**7. Take a look at the data you retrieved in question 5. Give some insights.**
The top 10 most rated apps are mostly in Social Netwroking, Music, Games genres. which people use the most in their daily life.

Combiming the results of number of rating times (the total rating divided by user rating) as table 1 below,  those most rated apps are mostly in the top 10 apps with most times of rating. So, the more popular your application is and the more time people consumed in the application, the more chances they will rate your app on appstore.

<Table 1 - app's name/number of rating times/ genre/ price>
'Facebook','849907.4285714285','Social Networking','0'
'Pandora - Music & Radio','281719.75','Music','0'
'Pinterest','235916.44444444444','Social Networking','0'
'Bible','219093.33333333334','Reference','0'
'Angry Birds','183211.33333333334','Games','0'
'PAC-MAN','169602.66666666666','Games','0'
'Fruit Ninja Classic','155225.77777777778','Games','1.99'
'Solitaire','150901.11111111112','Games','0'
'The Weather Channel: Forecast, Radar & Alerts','141607.42857142858','Weather','0'
'Google Earth','127481.42857142857','Travel','0'


**8. Take a look at the data you retrieved in question 6. Give some insights.**
The top 10 best rated apps are mostly in Health & Fitness, Games, Lifestyle genres. People are quite willing to put money in those genres of apps, and satisfied by the service. 

<Table 2 - app's name/number of rating times/ genre/ price>
'Daily Audio Bible App','159.2','Lifestyle','0.99'
'Infect Them All : Vampires','165.2','Games','0.99'
'Timeshare+','0.2','Finance','1.99'
'Headspace','2563.8','Health & Fitness','0'
'Pumped: BMX','232.8','Games','1.99'
'Sworkit - Custom Workouts for Exercise & Fitness','3363.8','Health & Fitness','0'
'Fieldrunners 2','2842.8','Games','2.99'
'Dragon Island Blue','1823.8','Games','0.99'
'Fragment\'s Note','0.2','Games','3.99'
'J&J Official 7 Minute Workout','972.2','Health & Fitness','0'

**9. Now compare the data from questions 5 and 6. What do you see?**

It's difficult for not free-of-charge application to be very popular (only one app :'Fruit Ninja Classic' in the most-rated apps list as in table one ).

Games genre has the comparably fierecer competition in app market (most apps in this genre and more people are using), but they also have more users who use (and rate) their apps.

The audience of best rated apps are much smaller than the most rated apps, find more details in table 2,  that means, we couldn't tell those best rated application perform better than other apps only by their rate, cause they haven't been used by much people.

**10. How could you take the top 3 regarding both user ratings and number of votes?**
top 1 - 'Facebook'
Reason: overwhelming advantage in terms of number of users, even though with an average rate, but it's one of the app you couldn't live without

top 2 - 'Plants vs. Zombies'
Reason: within the best rated apps, it has most times of rating times at 85k+, top rated  with a large population of users, it deserve the second place.

top 3 - 'Pinterest'
Reason: within the 200k+ of rating times, it has comparatively more users & higher rating, have a solid audience and good score.

Conclusion comes from 2 results below:

most voted apps (order by number of rating times, then by rating)
<Table 3 - app's name/ user rating/ number of rating times/ genre>
'Facebook','3.5','849907.4285714285','Social Networking'
'Pandora - Music & Radio','4','281719.75','Music'
'Pinterest','4.5','235916.44444444444','Social Networking'
'Bible','4.5','219093.33333333334','Reference'
'Angry Birds','4.5','183211.33333333334','Games'
'PAC-MAN','3','169602.66666666666','Games'
'Fruit Ninja Classic','4.5','155225.77777777778','Games'
'Solitaire','4.5','150901.11111111112','Games'
'The Weather Channel: Forecast, Radar & Alerts','3.5','141607.42857142858','Weather'
'Google Earth','3.5','127481.42857142857','Travel'

best rated apps (order by rating, then by number of rating times)
<Table 4 - app's name/ user rating/ number of rating times/ genre>
'Plants vs. Zombies','5','85292.6','Games'
'Domino\'s Pizza USA','5','51724.8','Food & Drink'
'Plants vs. Zombies HD','5','32719.6','Games'
'TurboScan Pro - document & receipt scanner: scan multiple pages and photos to PDF','5','5677.6','Business'
'Sworkit - Custom Workouts for Exercise & Fitness','5','3363.8','Health & Fitness'


**11. Do people care about the price of an app?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

Conclusion 1 (in 3)
We couldn't say people don't care about price, since within top 10 the most-rated apps(table 5 as below), there is only one app which is not FREE, it's a bit a threshold for most of the audience.

<Table 5 - app's name/price/ user_rating/ number of rating times>
'Facebook','0','3.5','849907.4285714285'
'Pandora - Music & Radio','0','4','281719.75'
'Pinterest','0','4.5','235916.44444444444'
'Bible','0','4.5','219093.33333333334'
'Angry Birds','0','4.5','183211.33333333334'
'PAC-MAN','0','3','169602.66666666666'
'Fruit Ninja Classic','1.99','4.5','155225.77777777778'
'Solitaire','0','4.5','150901.11111111112'
'The Weather Channel: Forecast, Radar & Alerts','0','3.5','141607.42857142858'
'Google Earth','0','3.5','127481.42857142857'
'Messenger','0','3','117155.33333333333'
'Calorie Counter & Diet Tracker by MyFitnessPal','0','4.5','112823.55555555556'
'Skype for iPhone','0','3.5','106719.71428571429'
'Twitter','0','3.5','101159.42857142857'
'Shazam - Discover music, artists, videos & lyrics','0','4','100731.25'

Conclusion 2 (in 3)
Develop more for the price threshold, we could tell from table 6, for apps equal or more than 9.99 USD, there is only one app which have more than 11k number of rating times, the rest are are all below 3k, so people do care about price, decide if the mass audience will pay and use it, well, also means the more expensive the price is, the less opportunity they have to have lots of users.

<Table 6 - app's name/price/ user_rating/ number of rating times>
'Proloquo2Go - Symbol-based AAC','249.99','4','193.25'
'STEINS;GATE','24.99','4','4'
'Gaia GPS Classic','19.99','4.5','539.7777777777778'
'iStatVball 2 iPad Edition','19.99','4.5','42.888888888888886'
'Notion','14.99','4','232.25'
'FiLMiC Pro','14.99','3','492.6666666666667'
'FL Studio Mobile','13.99','3.5','233.71428571428572'
'PCalc - The Best Calculator','9.99','4.5','248.22222222222223'
'forScore','9.99','4.5','868.6666666666666'
'iAnnotate PDF','9.99','4.5','2479.1111111111113'
'Chess Pro with Coach - Learn,Play & Online Friends','9.99','4','2034.5'
'Refills Calendar - Scheduler - Note','9.99','4','49'
'Notability','9.99','4','4398.5'
'PDF Reader Pro Edition - Annotate,edit & sign PDFs','9.99','4','1758.25'
'AudioNote - Notepad and Voice Recorder','9.99','4','439'
'SCRABBLE Premium for iPad','9.99','3.5','11336.57142857143'
'Boating USA','9.99','3.5','97.71428571428571'
'Bluebeam Revu','9.99','3','70'
'Jesus Calling Devotional by Sarah Young','9.99','2.5','674'

Conclusion 3 (in 3)
Well, when the price is between 0.99 USD & 4.99 USD in table 7, there are still quite some apps have more than 10k number of rating times and a quite good satisfaction (user rating), so people are ready to pay little price to use a paid application.

<Table 7 - app's name/price/ user_rating/ number of rating times>
'Plants vs. Zombies HD','0.99','5','32719.6'
'Plants vs. Zombies','0.99','5','85292.6'
'Cut the Rope: Experiments','0.99','4.5','14060.444444444445'
'Solitaire by MobilityWare','4.99','4.5','17048.88888888889'
'Zombieville USA 2','0.99','4.5','17707.333333333332'
'Scribblenauts Remix','0.99','4.5','19139.333333333332'
'Flick Home Run !','0.99','4.5','21966.88888888889'
'Where\'s My Water?','1.99','4.5','29256.88888888889'
'Plague Inc.','0.99','4.5','31841.11111111111'
'Fruit Ninja Classic','1.99','4.5','155225.77777777778'
'Fieldrunners','2.99','4','10408.25'
'Call of Duty: Zombies','4.99','4','15985.75'
'BATTLE BEARS: Zombies!','0.99','3.5','14488.57142857143'
'StickWars','0.99','3.5','15377.42857142857'
'Sunday Lawn','0.99','3.5','30779.14285714286'


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
