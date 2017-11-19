# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#5.times do |n|
#  email = Faker::Internet.email
#  password = "pass123"
#  name = Faker::Name.name
#  User.create!(email: email,
#               password: password,
#               password_confirmation: password,
#               name: name,
#               uid: n
#               )
#end

#users = User.all

#users.each do |user| 
#  user.tweets.create(content: Faker::Food.dish) 
#end

#tweets = Tweet.all

#tweets.each do |tweet|
#  tweet.comments.create(content: Faker::Food.dish, user_id:1)
#end
Place.create([
  { name: '小栗原小', description: '小栗原ベアーズ', latitude: '35.711943', longitude: '139.943215', user_id: 1, address: '船橋市本中山3-16-12', information: 'ライトが狭い'},
  { name: '高瀬グランド', description: '船橋市営', latitude: '35.672581', longitude: '139.996521', user_id: 1, address: '船橋市高瀬町62-4', information: '公式戦の会場'}
])

