require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts "Creating restaurants..."
6.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanaese french belgian].sample
  )
  puts "Restaurant #{restaurant.name} created!"
end

puts "Finished!"
