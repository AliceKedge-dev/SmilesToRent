# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Clown.create!(username: "Melissandre", user: User.last)
Clown.create!(username: "Queen C", user: User.last)
Clown.create!(username: "Michel", user: User.last)

User.create(email: "email@email.com", password: "password")
User.create(email: "user@email.com", password: "userpassword")
