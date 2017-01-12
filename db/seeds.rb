# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#100.times do |n|
#  email = Faker::Internet.email
#  password = "password"
#  User.create!(email: email,
#               password: password,
#               password_confirmation: password,
#               )
#end

n=1
users=User.ids
num=User.count
while n <= 100
  title = Faker::Team.creature
  content = Faker::Team.creature
  id = Faker::Number.between(1,num)
  user_id = users[id-1]
  Blog.create(
    title: title,
    content: content,
    user_id: user_id
  )
  n=n+1
end
