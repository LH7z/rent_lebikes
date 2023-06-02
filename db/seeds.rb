# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 5.times do
# bike = Bike.new(price: "", description: "", user: user)
# bike.save
# end

user = User.new(email: "user1@test", password: "123456")
user.save

user2 = User.new(email: "user2@test", password: "123456")
user.save
