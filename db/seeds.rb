# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do
	Product.create(
		name: Faker::Book.unique.title,
		price: Random.rand(500..3000),
    details: 'いろはにほへとちりぬるを'
	)
end

# 5.times do
# 	Product.create(
# 		name: Faker::book,
# 		price: Faker::price,
# 		detail: Faker::Lorem.words(number: 20)
# 	)
# end