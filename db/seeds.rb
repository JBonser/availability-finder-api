# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{email: 'test', password: 'test', firstName: 'Test', lastName: 'User'}])

userdates = Userdate.create({date: 2.days.ago, user_id: users.first.id})
userdates2 = Userdate.create({date: 1.days.ago, user_id: users.first.id})
userdates3 = Userdate.create({date: 4.days.ago, user_id: users.first.id})
