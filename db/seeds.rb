# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(username:"Pete", lastname: "Camp", email: "Pete.F.Camp@gmail.com", password: "pete", password_confirmation: "pete")
User.create!(username:"StephenCurry", lastname: "Curry", email: "stephencurry@warriors.com", password: "warriors", password_confirmation: "warriors")

