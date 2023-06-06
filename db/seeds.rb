# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Event.destroy_all
Proposition.destroy_all
User.destroy_all


user1 = User.create(nickname: "junior", email: "alpha@test.com", password: 123456)
Proposition.create(content: "mcdonals")
Proposition.create(content: "KFC")
Proposition.create(content: "QUIK")
Proposition.create(content: "subway")
Event.create(name: "restaurants", user_id: user1.id)

user2 = User.create(nickname: "Beta", email: "beta@test.com", password: 123456)

Proposition.create(content: "Horry Potter")
Proposition.create(content: "Fast And Furious")
Proposition.create(content: "Robin de bois")
Proposition.create(content: "Lord of the Rings")
Event.create(name: "movies", user_id: user2.id)


user3 = User.create(nickname: "Remeo", email: "Remeo@test.com", password: 123456)
Proposition.create(content: "Steve jobs")
Proposition.create(content: "Elon musk")
Proposition.create(content: "Amazon unbound Jeff Bezos")
Proposition.create(content: "The Esssays of Warren Buffet")
Event.create(name: "books", user_id: user3.id)


user4 = User.create(nickname: "juliette", email: "juliette@test.com", password: 123456)
Proposition.create(content: "Football")
Proposition.create(content: "Baseball")
Proposition.create(content: "Basketball")
Proposition.create(content: "rugby")
Event.create(name: "sports", user_id: user4.id)


user5 = User.create(nickname: "Sevran", email: "sevran@test.com", password: 123456)
Proposition.create(content: "The big ATOMIUM")
Proposition.create(content: "The Grand place")
Proposition.create(content: "The Towel Eiffel")
Proposition.create(content: "The Loire Valleys castle")
Event.create(name: "tourists", user_id: user5.id)


