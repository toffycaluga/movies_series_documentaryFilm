# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating movies..."
Movie.create(name: "Example Movie 1", synopsis: "Lorem ipsum dolor sit amet.", director: "John Doe")
Movie.create(name: "Example Movie 2", synopsis: "Lorem ipsum dolor sit amet.", director: "John Doe")
puts "Movies created successfully"
puts "Creating series ..."
Serie.create(name: "Example Serie", synopsis: "Lorem ipsum dolor sit amet.", director: "Jane Smith")
Serie.create(name: "Example Serie 2", synopsis: "Lorem ipsum dolor sit amet.", director: "Jane Smith")
puts "Series created successfully"
puts "Creating documentary films ..."
DocumentaryFilm.create(name: "Example Documentary", synopsis: "Lorem ipsum dolor sit amet.", director: "Mike Johnson")
DocumentaryFilm.create(name: "Example Documentary 2", synopsis: "Lorem ipsum dolor sit amet.", director: "Mike Johnson")
puts "Documentary Film created successfully"