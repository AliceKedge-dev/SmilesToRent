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

file1 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687274637/WhatsApp_Image_2023-06-20_at_16.19.28_1_cz50ha.jpg")
clown1 = Clown.new(username: "Melissandre", user: User.last, category: "clown de mariage", localisation: "Paris", price: "40€/h")
clown1.photo.attach(io: file1, filename: "Melissandre", content_type: "image/jpg")
clown1.save

file2 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687274602/WhatsApp_Image_2023-06-20_at_16.19.29_tnizvg.jpg")
clown2 = Clown.new(username: "Alfred Penier", user: User.last, category: "clown d'anniversaire", localisation: "Avignon", price: "60€/h")
clown2.photo.attach(io: file2, filename: "Alfred", content_type: "image/jpg")
clown2.save

file3 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687274601/WhatsApp_Image_2023-06-20_at_16.19.29_1_wnqwl2.jpg")
clown3 = Clown.new(username: "Jean Pascal", user: User.last, category: "clown d'hôpital", localisation: "Nice", price: "25€/h")
clown3.photo.attach(io: file3, filename: "Jean", content_type: "image/jpg")
clown3.save
