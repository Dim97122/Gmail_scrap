require 'dotenv/load'
require 'gmail'
require 'mail'

user = ENV("USER")
password = ENV("PASSWORD")

gmail.inbox.count
puts gmail.inbox.count(:unread)
puts gmail.inbox.count(:read)

gmail.deliver do
  to "mrgeezpop@gmail.com"
  subject "Tu veux gagner de l'argent en masse ?"
  text_part do
    body "Text of plaintext message."
  end
  html_part do
    content_type 'text/html; charset=UTF-8'
    body "Si tu veux gagner de l'argent en masse appelle moi tout de suite ! Offre limitée !</p>"
  end
  add_file "/path/to/some_image.jpg"
end


gmail.logout