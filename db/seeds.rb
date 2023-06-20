# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

file = URI.open("https://asset.cloudinary.com/dkx9xgzon/1d393eaf478154cec48eb581cbb9ed87")
clown1 = Clown.new(username: "Melissandre", user: User.last, category: "clown de mariage", localisation: "Paris", price: "40€/h")
clown1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
clown1.save

Clown.create(username: "Melissandre", user: User.last, category: "clown de mariage", localisation: "Paris", price: "40€/h")

Clown.create(username: "Alfred Penier", user: User.last, category: "clown d'anniversaire", localisation: "Avignon", price: "60€/h")
Clown.create(username: "Jean Pascal", user: User.last, category: "clown d'hôpital", localisation: "Nice", price: "25€/h")

User.create(email: "email@email.com", password: "password")
User.create(email: "user@email.com", password: "userpassword")
