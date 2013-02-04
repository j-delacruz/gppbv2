# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
users = []

user1 = User.create!(email: 'admin@example.com', password: 'password', admin: true )
puts user1.email


agency1 = Agency.create!(name: 'James Agency', security_code: 'SAMPLE0001')
agency2 = Agency.create!(name: 'Shiela Agency', security_code: 'SAMPLE0002')
agency3 = Agency.create!(name: 'Vieve Agency', security_code: 'SAMPLE0003')


user2 = User.create!(email: 'james@example.com', password: 'password', agency_id: 1)
puts user2.email

user3 = User.create!(email: 'shiela@example.com', password: 'password', agency_id: 2)
puts user3.email

user4 = User.create!(email: 'vieve@example.com', password: 'password', agency_id: 3)
puts user4.email