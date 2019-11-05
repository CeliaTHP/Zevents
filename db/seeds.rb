# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Event.destroy_all
Attendance.destroy_all

#users
10.times do
@user = User.create(
first_name: Faker::Name.first_name,
last_name: Faker::Name.last_name,
#email: Faker::Internet.email,
#yopmail
email: "#{Faker::Internet.username}@yopmail.com",
description: Faker::TvShows::RuPaul.quote,
password: "#{Faker::Number.number(digits:10)}"
)
puts "n°#{@user.id} - #{@user.first_name} #{@user.last_name} added, #{@user.description}, contact: #{@user.email}"
puts "-" * 80
end

#events
10.times do
@event = Event.create(
title: Faker::TvShows::RickAndMorty.quote,
start_date: Faker::Time.forward(days: 100),
duration: rand(1..20)*5,
description: Faker::TvShows::SouthPark.quote,
price: rand(1..1000),
location: Faker::TvShows::RickAndMorty.location,
creator: User.all.sample
)
puts "RDV : #{@event.title} \n at #{@event.location} \n for #{@event.price}€ \n by #{@event.creator.first_name}"
puts "-" * 80
end

#attendance
10.times do
@attendance = Attendance.create(
stripe_customer_id: Faker::Number.number(digits: 10),
user: User.all.sample, #pick random user
event: Event.all.sample, #pick random event
)
end

puts "Event joined by randoms"

