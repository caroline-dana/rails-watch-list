# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Movie.destroy_all

25.times do
  movie = Movie.new(title: Faker::Dessert.flavor, overview: Faker::GreekPhilosophers.quote, poster_url: 'https://picsum.photos/200/300', rating: rand(0.0..10.0))
  movie.save
  puts 'created 1 movie'
end
