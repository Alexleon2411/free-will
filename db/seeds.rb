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
event = Event.create(name: "restaurants", user_id: user1.id)

prop = Proposition.new(content: "mcdonals")
prop.event = event
prop.save
prop = Proposition.create(content: "KFC")
prop.event = event
prop.save
prop = Proposition.create(content: "QUIK")
prop.event = event
prop.save
prop = Proposition.create(content: "subway")
prop.event = event
prop.save

user2 = User.create(nickname: "Beta", email: "beta@test.com", password: 123456)
Event.create(name: "movies", user_id: user2.id)

prop = Proposition.new(content: "Horry Potter")
prop.event = event
prop.save
prop = Proposition.create(content: "Fast And Furious")
prop.event = event
prop.save
prop = Proposition.create(content: "Robin de bois")
prop.event = event
prop.save
prop = Proposition.create(content: "Lord of the Rings")
prop.event = event
prop.save

user3 = User.create(nickname: "Remeo", email: "Remeo@test.com", password: 123456)
Event.create(name: "books", user_id: user3.id)

prop = Proposition.new(content: "Steve jobs")
prop.event = event
prop.save
prop = Proposition.create(content: "Elon musk")
prop.event = event
prop.save
prop = Proposition.create(content: "Amazon unbound Jeff Bezos")
prop.event = event
prop.save
prop = Proposition.create(content: "The Esssays of Warren Buffet")
prop.event = event
prop.save


user4 = User.create(nickname: "juliette", email: "juliette@test.com", password: 123456)
Event.create(name: "sports", user_id: user4.id)

prop = Proposition.new(content: "Football")
prop.event = event
prop.save
prop = Proposition.create(content: "Baseball")
prop.event = event
prop.save
prop = Proposition.create(content: "Basketball")
prop.event = event
prop.save
prop = Proposition.create(content: "rugby")
prop.event = event
prop.save



user5 = User.create(nickname: "Sevran", email: "sevran@test.com", password: 123456)
Event.create(name: "tourists", user_id: user5.id)

prop = Proposition.new(content: "The big ATOMIUM")
prop.event = event
prop.save
prop = Proposition.create(content: "The Grand place")
prop.event = event
prop.save
prop = Proposition.create(content: "The Towel Eiffel")
prop.event = event
prop.save
prop = Proposition.create(content: "The Loire Valleys castle")
prop.event = event
prop.save
