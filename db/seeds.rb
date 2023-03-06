# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

capitals = Capital.create({ city: "Springfield", state: "Illinois", timezone: "Central" })
capitals = Capital.create({ city: "Lansing", state: "Michigan", timezone: "Eastern" })
capitals = Capital.create({ city: "Olympia", state: "Washington", timezone: "Pacific" })
capitals = Capital.create({ city: "Denver", state: "Colorado", timezone: "Mountain" })
