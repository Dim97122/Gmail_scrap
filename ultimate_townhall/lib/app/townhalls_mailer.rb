require 'gmail'
require 'mail'
require 'dotenv/load'
require 'json'


=begin
wilrib = File.read('./db/...json')
db = JSON.parse(wilrib)
=end
db = {"MEAUX" => "dimitri.kiavue@gmail.com", "LOGNES" => "gyenhgee@gmail.com"}


user = ENV["config.user"]
password = ENV["config.password"]

gmail = Gmail.connect(user, password)

db.each do |key, value|
  @email = gmail.compose do
    to value
    subject "Having fun in Puerto Rico!"
    body "Bonjour,
  Je m'appelle Gino, je suis élève à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. La pédagogie de notre école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous.

  Déjà 500 personnes sont passées par The Hacking Project. Est-ce que la mairie de #{key} veut changer le monde avec nous ?


  Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80"
      end

    @email.deliver!
    end
