# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
user1 = user.create(nickname: "junior", email: "alpha@test.com", password: 123456)
proposition.create(content: "mcdonals")
proposition.create(content: "KFC")
proposition.create(content: "QUIK")
proposition.create(content: "subway")
event.create(name: "restaurants", user_id: user1.id)

user2 = user.create(nickname: "Beta", email: "beta@test.com", password: 123456)

proposition.create(content: "Horry Potter")
proposition.create(content: "Fast And Furious")
proposition.create(content: "Robin de bois")
proposition.create(content: "Lord of the Rings")
event.create(name: "movies", user_id: user2.id)


user3 = user.create(nickname: "Remeo", email: "Remeo@test.com", password: 123456)
proposition.create(content: "Steve jobs")
proposition.create(content: "Elon musk")
proposition.create(content: "Amazon unbound Jeff Bezos")
proposition.create(content: "The Esssays of Warren Buffet")
event.create(name: "books", user_id: user3.id)


user4 = user.create(nickname: "juliette", email: "juliette@test.com", password: 123456)
proposition.create(content: "Football")
proposition.create(content: "Baseball")
proposition.create(content: "Basketball")
proposition.create(content: "rugby")
event.create(name: "sports", user_id: user4.id)


user5 = user.create(nickname: "Sevran", email: "sevran@test.com", password: 123456)
proposition.create(content: "The big ATOMIUM")
proposition.create(content: "The Grand place")
proposition.create(content: "The Towel Eiffel")
proposition.create(content: "The Loire Valleys castle")
event.create(name: "tourists", user_id: user5.id)
