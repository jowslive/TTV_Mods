# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new(email: "joao@gmail.com", password: "123456", nickname: "jows", view_count: 50, image: "google.com.br", admin: true)
u.save!

a = User.new(email: "kayo@gmail.com", password: "123456", nickname: "kayoo", view_count: 500, image: "google2.com.br", admin: false)
a.save!