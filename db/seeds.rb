# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# User.create!(email: "tony@tony.org",
#              password:              "tony",
#              password_confirmation: "tony")

# Users
User.create!(email: "example@railstutorial.org",
             password:              "foobar")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(email: email,
              password: password)
end

# Entries
users = User.order(:created_at).take(6)
50.times do
  body = Faker::Lorem.sentence(5)
  users.each { |user| user.entries.create!(title: Faker::Lorem.sentence, body: body) }
end

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }