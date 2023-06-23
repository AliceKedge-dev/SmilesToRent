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

puts "creating users"

fileuser1 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687517339/306768251_6135640036449583_9165078493045947229_n_lx5p7s.jpg")
user1 = User.create(email: "gaspard@email.com", password: "password", username: "gaspacho")
user1.photo.attach(io: fileuser1, filename: "gaspard", content_type: "image/png")
user1.save

fileuser2 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687517379/184389336_606463140447182_2517201873288020321_n_dwicwa.jpg")
user2 = User.create(email: "alice@email.com", password: "password",  username: "aliche")
user2.photo.attach(io: fileuser2, filename: "alice", content_type: "image/png")
user2.save

fileuser3 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687517423/312264256_1204942473459118_8230975456803184129_n_lx6pxd.jpg")
user3 = User.create(email: "gabriel@email.com", password: "password",  username: "gabrielo")
user3.photo.attach(io: fileuser3, filename: "gabriel", content_type: "image/png")
user3.save

puts "creating clowns"

file1 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687274637/WhatsApp_Image_2023-06-20_at_16.19.28_1_cz50ha.jpg")
file2 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687425903/1000_F_219407364_iC4y9fPCTJmRBKjEa5gKydF0fAKuoUxM_hjyirq.jpg")
file3 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687425954/t%C3%A9l%C3%A9chargement_24_bw5jrx.jpg")
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
clown1.photos.attach([
    {io: file1, filename: "Melissandre", content_type: "image/jpg"},
    {io: file2, filename: "Melissandre", content_type: "image/jpg"},
    {io: file3, filename: "Melissandre", content_type: "image/jpg"}
  ])
clown1.save

file4 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687274602/WhatsApp_Image_2023-06-20_at_16.19.29_tnizvg.jpg")
file5 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687426081/t%C3%A9l%C3%A9chargement_26_mh1ipo.jpg")
file6 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687426077/t%C3%A9l%C3%A9chargement_25_mckzgy.jpg")
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
  clown2.photos.attach([
    {io: file4, filename: "Alfred", content_type: "image/jpg"},
    {io: file5, filename: "Alfred", content_type: "image/jpg"},
    {io: file6, filename: "Alfred", content_type: "image/jpg"}
  ])
clown2.save

file7 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687423161/development/kbxjd4xdfjljztpjp9x6za5mg5ri.jpg")
file8 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687426180/Soleil-Rouge-2016b-TBozzato-web-7_nuo7lh.jpg")
file9 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687426208/sonia-fait-la-clown-a-lhopital_lh6qrs.png")
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
  clown3.photos.attach([
    {io: file7, filename: "Jean", content_type: "image/jpg"},
    {io: file8, filename: "Jean", content_type: "image/jpg"},
    {io: file9, filename: "Jean", content_type: "image/jpg"}
  ])
clown3.save


puts "salam"
