***INTRO***

La Team. Ce projet vous est présenté par la team Boyz II Code, composée de :

- Dimitri Kiavue @Dimitri - BoyzIICode
- Gino Huynh - @Gino
- Pierre Tâm-Anh Le Khac @Pierre Tâm-Anh - BoyzIICode
- William Ribeiro @wilrib - non-binaire

Comment démarrer le programme? 


***LE DOSSIER***
- une partie qui explique l'arborescence du dossier, 
- et l'utilité de tous les programmes


***L'UTILISATION DU DOSSIER***

- comment se servir du programme?  

- les gems que nous avons utilisées : 
pour le mailer : gmail, mail et json. 
pour le scrapping : ruby gem, nokogori, open-uri
pour le bot twitter : twitter, dotenv 

***NOTRE PROCESS**¨

**Le scrapping**
Sur le site web www.annuaire-des-mairies.com, nous avons scrappé séparément les départements du Morbihan (56) , Lot-Et-Garonne (47) et Hautes Alpes (05) pour obtenir les adresses emails, le nom et des villes et leurs département rattachés. Puis on a créé un fichier Json qui contient un hash qui réunit  

**L’emailing massif**
Via le fichier emails.json, nous avons récupéré la base de données scrappée des emails du département du Morbihan (56) , Lot-Et-Garonne (47) et Hautes Alpes (05). Nous l'avons parsé en objet ruby pour y appliquer une boucle qui enverra un mail à chacune des entrées de type email. Par souci d'automatisation, on personnalisera le texte de l'email avec le nom de la commune qui figure dans la même boucle.

**Le nombre de mairies touchées** 
Au total, nous avons touché les 177 villes des Hautes-Alpes, les 319 villes du Lot-Et-Garonne et les 261 communes du Morbihan, soit un total de 757 communes françaises. Pour se faire, les méthodes "size" et "length" font l'affaire, sinon pour celles et ceux qui la flemme de rentrer ces méthodes, l'annuaire affiche le nombres des villes. 

**Le handle Twitter qui a été utilisé**

