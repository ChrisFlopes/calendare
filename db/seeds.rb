# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying Tables 🧨"
Event.destroy_all
Participant.destroy_all
Group.destroy_all
User.destroy_all

puts "Creating Users 👨‍👦‍👦"
user1 = User.new
user1.first_name = "Chris"
user1.last_name = "Lopes"
user1.email = "CFMLopes@Hotmail.co.uk"
user1.password = "123456"
user1.save

user2 = User.new
user2.first_name = "Dom"
user2.last_name = "Wicketts"
user2.email = "DWicketts@Hotmail.co.uk"
user2.password = "123456"
user2.save

puts "Creating Groups"
group = Group.new
group.name = 'Chatting Shit'
group.save

part1 = Participant.new
part1.user = user1
part1.group = group
part1.save

part2 = Participant.new
part2.user = user2
part2.group = group
part2.save

puts "Creating Events"
event = Event.new
event.group = group
event.name = 'Bowling'
event.price = 15.0
event.description = 'Bowling with the bois'
event.address = '66 Mooner Road'
event.time = Time.now
event.status = 'pending'
puts "#{event.save}"
event.save

