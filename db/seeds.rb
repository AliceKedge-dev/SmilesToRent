# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
Clown.destroy_all
User.destroy_all

User.create(email: "email@email.com", password: "password")
User.create(email: "user@email.com", password: "userpassword")

puts "yo"

file1 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687274637/WhatsApp_Image_2023-06-20_at_16.19.28_1_cz50ha.jpg")
clown1 = Clown.new(username: "Melissandre", user: User.last, category: "clown de mariage", localisation: "Paris", price: "40€/h", personal_info: "Melissandre, le clown qui illumine
  ce mariage de sa présence,
  est une artiste exceptionnelle au charme envoûtant. Affublée d'un costume coloré et étincelant, elle incarne à merveille la magie et la joie de l'événement.
  Son visage est habilement maquillé, mélangeant des nuances vives et des motifs ludiques qui accentuent sa personnalité excentrique.
  Dès qu'elle entre en scène, Melissandre captive instantanément l'attention de tous les convives. Son énergie contagieuse et
  son sourire radieux illuminent la salle,
  créant une atmosphère de bonheur partagé. Armée de son nez rouge éclatant, elle sème des éclats de rire sur son passage.
  Melissandre est une artiste polyvalente qui maîtrise une multitude de talents. Elle excelle dans l'art de jongler avec
  des balles multicolores, des foulards
  virevoltants et même des cerceaux scintillants. Sa dextérité et sa coordination impressionnent à chaque mouvement, tandis
  que ses cascades virtuoses suscitent l'admiration et l'émerveillement.
  Mais Melissandre est bien plus qu'une simple jongleuse. Elle se transforme en une mime talentueuse qui utilise des gestes expressifs
  pour raconter des histoires hilarantes et touchantes sans prononcer un mot.
  Ses mimiques exagérées et son jeu théâtral captivent le public, créant des moments de pure hilarité et d'émotion.")
clown1.photo.attach(io: file1, filename: "Melissandre", content_type: "image/jpg")
clown1.save

file2 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687274602/WhatsApp_Image_2023-06-20_at_16.19.29_tnizvg.jpg")
clown2 = Clown.new(username: "Alfred Penier", user: User.last, category: "clown d'anniversaire", localisation: "Avignon", price: "60€/h", personal_info: "Lorem ipsum dolor sit amet.
  Est libero distinctio est dolor perspiciatis
  ex aliquid eligendi. Aut natus amet et natus officiis et vero saepe.
  Ut debitis atque sed corporis error ab voluptatem illum aut galisum culpa qui quia iure sit nostrum illum.
  Et consequuntur consequatur sed nisi autem ea ducimus assumenda ab facilis nesciunt ea nemo voluptas Est libero distinctio est dolor perspiciatis
  ex aliquid eligendi. Aut natus amet et natus officiis et vero saepe.
  Ut debitis atque sed corporis error ab voluptatem illum aut galisum culpa qui quia iure sit nostrum illum.
  Et consequuntur consequatur sed nisi autem ea ducimus assumenda ab facilis nesciunEst libero distinctio est dolor perspiciatis
  ex aliquid eligendi. Aut natus amet et natus officiis et vero saepe.
  Ut debitis atque sed corporis error ab voluptatem illum aut galisum culpa qui quia iure sit nostrum illum.
  Et consequuntur consequatur sed nisi autem ea ducimus assumenda ab facilis nesciun.")
clown2.photo.attach(io: file2, filename: "Alfred", content_type: "image/jpg")
clown2.save

file3 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687274601/WhatsApp_Image_2023-06-20_at_16.19.29_1_wnqwl2.jpg")
clown3 = Clown.new(username: "Jean Pascal", user: User.last, category: "clown d'hôpital", localisation: "Nice", price: "25€/h", personal_info: "Lorem ipsum dolor sit amet.
  Est libero distinctio est dolor perspiciatis
  ex aliquid eligendi. Aut natus amet et natus officiis et vero saepe.
  Ut debitis atque sed corporis error ab voluptatem illum aut galisum culpa qui quia iure sit nostrum illum.
  Et consequuntur consequatur sed nisi autem ea ducimus assumenda ab facilis nesciunt ea nemo voluptas Est libero distinctio est dolor perspiciatis
  ex aliquid eligendi. Aut natus amet et natus officiis et vero saepe.
  Ut debitis atque sed corporis error ab voluptatem illum aut galisum culpa qui quia iure sit nostrum illum.
  Et consequuntur consequatur sed nisi autem ea ducimus assumenda ab facilis nesciunEst libero distinctio est dolor perspiciatis
  ex aliquid eligendi. Aut natus amet et natus officiis et vero saepe.
  Ut debitis atque sed corporis error ab voluptatem illum aut galisum culpa qui quia iure sit nostrum illum.
  Et consequuntur consequatur sed nisi autem ea ducimus assumenda ab facilis nesciun.")
clown3.photo.attach(io: file3, filename: "Jean", content_type: "image/jpg")
clown3.save

puts "salam"
