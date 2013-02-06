# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
puts "Creating Admin...."
users = []
user1 = User.create!(email: 'admin@example.com', password: 'password', admin: true, agency_id: 1, agency_code: 'ADMIN12345', first_name: 'Admin', last_name: 'Admin', username: 'Admin' )
puts user1.email
puts "Done..\n\n"

puts "Creating AgencyType... "
agency_type0 = AgencyType.create!(name: 'SampleOne')
agency_type1 = AgencyType.create!(name: 'SampleTwo')
agency_type2 = AgencyType.create!(name: 'SampleThree')
agency_type3 = AgencyType.create!(name: 'SampleFour')
puts agency_type0.name
puts agency_type1.name
puts agency_type2.name
puts agency_type3.name
puts "Done.. \n\n"

puts "Creating Agency...."
agency0 = Agency.create!(name: 'Admin', security_code: 'ADMIN12345', agency_type_id: 1)
agency1 = Agency.create!(name: 'James Agency', security_code: 'AGENCY0001', agency_type_id: 2)
agency2 = Agency.create!(name: 'Shiela Agency', security_code: 'AGENCY0002', agency_type_id: 3)
agency3 = Agency.create!(name: 'Vieve Agency', security_code: 'AGENCY0003', agency_type_id: 4)
puts agency0.name
puts agency1.name
puts agency2.name
puts agency3.name
puts "Done.. \n\n"

puts "Creating Other User..."
user2 = User.create!(email: 'james@example.com', password: 'password', agency_id: 2, agency_code: 'AGENCY0001', first_name: 'James', last_name: 'Dela Cruz', username: 'jdelacruz')
puts user2.email

user3 = User.create!(email: 'shiela@example.com', password: 'password', agency_id: 3, agency_code: 'AGENCY0002', first_name: 'Shiela', last_name: 'Salamat', username: 'ssalamat')
puts user3.email

user4 = User.create!(email: 'vieve@example.com', password: 'password', agency_id: 4, agency_code: 'AGENCY0003', first_name: 'Vieve', last_name: 'Pablo', username: 'vpablo')
puts user4.email
puts "Finish..."
