# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
users = []

<<<<<<< HEAD
user1 = User.create!(email: 'admin@example.com', password: 'password', admin: true, first_name: 'Admin', last_name: 'Admin', :username=>'admin' )
puts user1.email

agency0 = Agency.create!(name: 'Admin', security_code: 'HKT3FD56R1')
agency1 = Agency.create!(name: 'James Agency', security_code: 'HKT3FD56R1')
agency2 = Agency.create!(name: 'Shiela Agency', security_code: 'KAY634HG&')
agency3 = Agency.create!(name: 'Vieve Agency', security_code: 'KSJHSNUA8U')

user2 = User.create!(email: 'james@example.com', password: 'password', agency_id: 1, first_name: 'James', last_name: 'Dela Cruz', :username=>'jdelacruz')
puts user2.email

user3 = User.create!(email: 'shiela@example.com', password: 'password', agency_id: 2, first_name: 'Shiela', last_name: 'Salamat', :username=>'ssalamat')
puts user3.email

user4 = User.create!(email: 'vieve@example.com', password: 'password', agency_id: 3, first_name: 'Vieve', last_name: 'Pablo', :username=>'vpablo')
puts user4.email
