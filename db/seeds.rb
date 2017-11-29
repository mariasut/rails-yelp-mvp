puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'
10.times do
  restaurant = Restaurant.create(name: Faker::Cat.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category:["chinese", "italian", "japanese", "french", "belgian"].sample)
  puts "#{restaurant.name} saved!"
end


puts 'Creating reviews...'
10.times do
  review = Review.create(content: Faker::Lorem.paragraph, rating: [1, 2, 3, 4,5].sample,
    restaurant_id: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].sample)
  puts "#{review.content} saved!"
end
puts 'Finished!'
