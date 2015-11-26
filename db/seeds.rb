# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "유철", email: "cokr3430@gmail.com", password: "12341234", password_confirmation: "12341234")
User.create(name: "현", email: "kibakin@snu.ac.kr", password: "12345678", password_confirmation: "12345678")
User.create(name: "배윤", email: "bae.yoon@gmail.com", password: "12344321", password_confirmation: "12344321")
User.create(name: "이예린", email: "skant121@nate.com", password: "12341234", password_confirmation: "12341234")
