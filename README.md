***INTRO***

**La Team.** Ce projet vous est présenté par les Boyz II Code, composée de :

- Dimitri Kiavue @Dimitri - BoyzIICode
- Gino Hu - @Gino
- Pierre Tâm-Anh Le Khac @Pierre Tâm-Anh - BoyzIICode
- William Ribeiro @wilrib - non-binaire


***COMMENT DEMARRER LE PROGRAMME?*** 

On installe les gems tranquilou, en mode ```bundle install``` puis on lance la machine ```ruby app.rb```


***LE DOSSIER***
- une partie qui explique l'arborescence du dossier, 

- et l'utilité de toutes les classes 




***L'UTILISATION DU DOSSIER***
- comment se servir du programme?  

**les gems que nous avons utilisées.** 
pour le mailer : gmail, mail et json. 
pour le scrapping : ruby gem, nokogori et open-uri.
pour le bot twitter : twitter et dotenv.


***NOTRE PROCESS***

**Etape 1 : le scrapping.**
Sur le site web www.annuaire-des-mairies.com, nous avons scrappé séparément les départements du Morbihan (56) , Lot-Et-Garonne (47) et Hautes Alpes (05) pour obtenir les adresses emails, le nom et des villes et leurs département rattachés. Puis on a créé un fichier Json qui contient un hash qui réunit  

**Etape 2 : l’emailing massif.**
Via le fichier emails.json, nous avons récupéré la base de données scrappée des emails des trois départements. Nous l'avons parsé en objet ruby pour y appliquer une boucle qui enverra un mail à chacune des entrées de type email. Par souci d'automatisation, on personnalisera le texte de l'email avec le nom de la commune qui figure dans la même boucle.

**Etape 3 : La relance twitter.**


***NOTRE IMPACT***

Au total, nous avons contacté les 177 villes des Hautes-Alpes, les 319 villes du Lot-Et-Garonne et les 261 communes du Morbihan, soit un total de 757 communes françaises, avant de follow leurs comptes twitter respectifs. 

