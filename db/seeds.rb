# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# album_list = [
#   ["Thriller", "Pop"],
#   ["back in black", "Rock"],
#   ["The Bodyguard", "Soul"],
#   ["Bat out of hell", "Rock"]
# ]

# album_list.each do |name, genre|
#   Album.create( name: name, genre: genre )
# end

# Spice.destroy_all

# 50.times do |index|
#   Spice.create!(name: Faker::Food.spice,
#                         description: Faker::Lorem.sentence(20, false, 0).chop,
#                         image_url: "site.com/here_is_a_picture_of_cardamom.jpg")
# end

# p "Created #{Spice.count} spices"

Album.destroy_all

10.times do |index|
  # Album.create!(name: Faker::Lorem.sentence(word_count: 2), genre: Faker::Lorem.word)
  Album.create!(name: Faker::Superhero.power, genre: Faker::Lorem.word)                    
end
##push album id to array, for each loop or random. look up Array.random/.sample
p "Created #{Album.count} albums"

# Song.destroy_all
num = 1
# num is the id number of the first album in the table. 
10.times do |index|
  # Album.create!(name: Faker::Lorem.sentence(word_count: 2), genre: Faker::Lorem.word)
  Song.create!(name: Faker::Superhero.name,lyrics: Faker::Lorem.paragraph_by_chars(number: 50), album_id: num)   
  
  num += 1
end

p "Created #{Song.count} songs"