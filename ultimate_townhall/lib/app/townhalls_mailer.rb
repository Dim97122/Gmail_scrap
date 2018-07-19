require 'gmail'
require 'mail'
require 'json'

class Mailer

def initialize
  # On appelle une classe file qui va aller chercher le emails.json, qu'on va stocker dans la variable wilrib
  wilrib = File.read('../../db/emails.json')
  db = JSON.parse(wilrib) #on va parser wilrib, pour le stocker dans la variable db

  user = gets.chomp
  password = gets.chomp

  gmail = Gmail.connect(user, password) #on se connecte à gmail avec user et mdp

  db.each do |key, value| #on lance une boucle sur db.
    @email = gmail.compose do #Cette boucle va composer un mail en utilisant comme destinataires les données de db qui s'avère être un array
      to value[1] #on demande à la boucle de chercher la deuxième de l'array de db (à savoir l'email)
      subject "Having fun in Puerto Rico!"
      body "Bonjour,
    Je m'appelle Gino, je suis élève à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. La pédagogie de notre école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous.

    Déjà 500 personnes sont passées par The Hacking Project. Est-ce que la mairie de #{key} veut changer le monde avec nous ?

    Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80"
        end   #pour automatiser les envois on met la |key| du hash db pour reliée à l'email correspondant.

      @email.deliver! #methode qui vient dela gem mail et qui fait voler les éléphants!!!!!!! Nan sérieux elle envoie un mail quoi ;)
      end
  end
end
