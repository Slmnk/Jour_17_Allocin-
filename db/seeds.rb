# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
100.times do
  film = Movie.create!(name: Faker::Movie.name, year: Faker::Number.between(1900, 2020).year)
end

film4 = Movie.create(name: "Interstellar", year: 2014, genre: "Science fiction, Drame", synopsis: "Le film raconte les aventures d’un groupe d’explorateurs qui utilisent une faille récemment découverte dans l’espace-temps afin de repousser les limites humaines et partir à la conquête des distances astronomiques dans un voyage interstellaire.", director: "Christopher Nolan", allocine_rating: 4.5, already_seen: true)


100.times do |index|
  User.create(first_name: "Nom#{index}", email: "email#{index}@example.com")
end # REPREND EXO PROJET 1 point d) ligne 4
