# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
	user = User.create!(name: Faker::RickAndMorty.character, email: Faker::Internet.email)	
end

10.times do
	link = Link.create!(user_id: rand(1..10), url: Faker::Internet.url)
end

10.times do
	comment = Comment.create!(user_id: rand(1..10), link_id: rand(1..10), content: Faker::HowIMetYourMother.quote)
end

10.times do
	comment1 = Comment1.create!(user_id: rand(1..10), comment_id: rand(1..10), content: Faker::Lebowski.quote)
end