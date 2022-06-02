
Album.destroy_all
album_id_array = []
10.times do |index|
  Album.create!(name: Faker::Superhero.power, genre: Faker::Lorem.word) 
      album_id_array.push(Album.last.id)                  
end
##push album id to array, for each loop or random. look up Array.random/.sample
p "Created #{Album.count} albums"

p album_id_array

album_id_array.each do |num|
  7.times do |index|
  Song.create!(name: Faker::Superhero.name,lyrics: Faker::Lorem.paragraph_by_chars(number: 50), album_id: num)   
  end
end

p "Created #{Song.count} songs"