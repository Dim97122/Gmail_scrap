## INTRO

**La Team.** Ce projet vous est présenté par les Boyz II Code, composée de :

- Dimitri Kiavue @Dimitri - BoyzIICode
- Gino Hu - @Gino
- Pierre Tâm-Anh Le Khac @Pierre Tâm-Anh - BoyzIICode
- William Ribeiro @wilrib - non-binaire


## COMMENT DEMARRER LE PROGRAMME? 

On installe les gems tranquilou, en mode ```bundle install``` puis on lance la machine ```ruby index.rb```


## LE DOSSIER
- une partie qui explique l'arborescence du dossier, 

```sh
.mass_emails
├── Gemfile
├── README.md
├── app.rb
├── db
│   ├── ain_emails.JSON
│   ├── aisne_emails.JSON
│   └── loire_emails.JSON
└── lib
    ├── townhall_mailer.rb
    ├── townhall_scrapper.rb
    └── twitter_follow.rb
```

### Scrapping: chopper tous les emails des mairies
```ruby
TownhallScrapper.new(url)
```
Initialize a scrapping object for `url`
```ruby
TownhallScrapper.list_from_url
```
Scrapps the url and generates an array of hashes `{name: "city_name", email: "city_email"}`
```ruby
TownhallScrapper.write_json_list(filename)
```
Creates `filename` and stores the previous hash in JSON format
```ruby
TownhallScrapper.read_json_from_db(filename)
```
Reads `filename`, a JSON file and returns an array of hashes `{name: "city_name", email: "city_email"}`

### Mailer: envoyer un email à toutes les mairies
```ruby
TownhallMailer.new(json_file)
```
Initialize an object with a hash `{name: "city_name", email: "city_email"}` from the json file
```ruby
TownhallMailer.send_email
```
Send an email to every address in the hash

### Twitter-Bot: suivre toutes les mairies sur Twitter
```ruby
TwitterFollow.new(file.JSON)
```
Initialize the object with the JSON file and create a hash from it
```ruby
TwitterFollow.follow
```
Finds the Twitter accounts of each city and follows them. Updates the JSON file with the Twitter handles
```ruby
TwitterFollow.update_json
```
Updates the JSON to `{name: "city_name", email: "city_email", handle: "@handle"}`




## L'UTILISATION DU DOSSIER
- comment se servir du programme?  

**les gems que nous avons utilisées.** 
pour le scrapping : 
```ruby gem```
```nokogori``` 
```open-uri```
pour le mailer
```gmail```
```mail``` 
```json``` 
pour le bot twitter : 
```twitter``` 
```dotenv```


## NOTRE PROCESS

**Etape 1 : le scrapping.**
Sur le site web www.annuaire-des-mairies.com, nous avons scrappé séparément les départements du Morbihan (56) , Lot-Et-Garonne (47) et Hautes Alpes (05) pour obtenir les adresses emails, le nom et des villes et leurs département rattachés. Puis on a créé un fichier Json qui contient un hash qui réunit  

**Etape 2 : l’emailing massif.**
Via le fichier emails.json, nous avons récupéré la base de données scrappée des emails des trois départements. Nous l'avons parsé en objet ruby pour y appliquer une boucle qui enverra un mail à chacune des entrées de type email. Par souci d'automatisation, on personnalisera le texte de l'email avec le nom de la commune qui figure dans la même boucle.

**Etape 3 : La relance twitter.**
On a récupéré le fichier Json qui contient la liste des noms des villes, puis on a utilisé une fonction de la gem Twitter qui screen pour aller chercher dans chaque donnée (la ville) le handle correspondant au compte des mairies des villes relatif. Puis on ouvre le fichier Json pour insérer le noms de ces handles, avant de tous les follow.  

## NOTRE IMPACT

Au total, nous avons contacté les 177 villes des Hautes-Alpes, les 319 villes du Lot-Et-Garonne et les 261 communes du Morbihan, soit un total de 757 communes françaises, avant de follow leurs comptes twitter respectifs. 
