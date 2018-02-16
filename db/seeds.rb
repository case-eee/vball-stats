# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

team = Team.create!(name: "Vision 14")

Player.create!(team: team, name: "Kaelyn", number: 5)
Player.create!(team: team, name: "Anna", number: 7)
Player.create!(team: team, name: "Annika", number: 17)
Player.create!(team: team, name: "Sydney", number: 4)
Player.create!(team: team, name: "Maya", number: 1)
Player.create!(team: team, name: "Lexi", number: 3)
Player.create!(team: team, name: "Emma", number: 9)
Player.create!(team: team, name: "Elliott", number: 6)
Player.create!(team: team, name: "Gracelyn", number: 8)

session = Round.create!(team: team, name: "Practice 2.12")
