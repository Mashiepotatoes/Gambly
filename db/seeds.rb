# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Experience.destroy_all

require "faker"
# TODO: Write a seed to insert 100 posts in the database
puts 'Creating 30 fake experiences...'
30.times do |i|
  puts "create experience#{i}"
  experience = Experience.new(
    name: Faker::Commerce.department,
    details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lobortis, sapien quis pretium feugiat",
    price: 49.99,
    photo_url: "https://picsum.photos/1980/720"
  )
  experience.save!
end
puts 'Finished!'
