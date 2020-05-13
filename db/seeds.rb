# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "Viktor", last_name: "Surname", phone_number: "+380633092334", email: "vodarchenko@gmail.com")
puts 'User created'
Notification.create(body_text: 'Hello %first_name% %last_name% ,you have notification', type_of_notification: 'base_notification')
puts 'Notification created'
