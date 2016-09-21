# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Package.destroy_all
Company.destroy_all
Office.destroy_all

100.times do |l|
	 name = Faker::Company.name

	Company.create!(name: name)


	end


200.times do |o|

	company = Company.all
	company = company.sample
	name = Faker::Address.street_name

	Office.create!(name: name, company_id: company.id)

end