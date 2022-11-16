puts "Clearing the db..."
Restaurant.destroy_all

puts "Creating restaurants..."

20.times do
  resto = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    rating: rand(1..5)
  )

  puts "Restaurant #{resto.id} created."
end
