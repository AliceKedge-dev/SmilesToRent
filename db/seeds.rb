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

file1 = URI.open("https://asset.cloudinary.com/dkx9xgzon/1d393eaf478154cec48eb581cbb9ed87")
clown1 = Clown.new(username: "Melissandre", user: User.last, category: "clown de mariage", localisation: "Paris", price: "40€/h")
clown1.photo.attach(io: file1, filename: "https://asset.cloudinary.com/dkx9xgzon/e5922ef5c9bab8d0bf083a5509ecf4a4", content_type: "image/png")
clown1.save

file2 = URI.open("https://asset.cloudinary.com/dkx9xgzon/1d393eaf478154cec48eb581cbb9ed87")
clown2 = Clown.new(username: "Alfred Penier", user: User.last, category: "clown d'anniversaire", localisation: "Avignon", price: "60€/h")
clown2.photo.attach(io: file2, filename: "https://asset.cloudinary.com/dkx9xgzon/b99caf877728216f4f7cba14f03a7beb", content_type: "image/png")
clown2.save

file3 = URI.open("https://asset.cloudinary.com/dkx9xgzon/1d393eaf478154cec48eb581cbb9ed87")
clown3 = Clown.new(username: "Jean Pascal", user: User.last, category: "clown d'hôpital", localisation: "Nice", price: "25€/h")
clown3.photo.attach(io: file3, filename: "https://asset.cloudinary.com/dkx9xgzon/5dd76c876a059c0295fd491596f96c2a", content_type: "image/png")
clown3.save
