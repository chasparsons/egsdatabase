# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'smarter_csv'

options = {}

# Use smarter_csv to load states from csv file
SmarterCSV.process('config/state_lookup.csv', options) do |chunk|
	chunk.each do |data_hash|
		State.create!(data_hash)
	end
end

cpt_code_check = CptCode.where(area: "AAA").first

if cpt_code_check.nil?

	# Use smarter_csv to load cpt codes from csv file
	SmarterCSV.process('config/cpt_all.csv', options) do |chunk|
		chunk.each do |data_hash|
			CptCode.create!(data_hash)
		end
	end
end

# Use smarter_csv to load Surgeons from CSV file
SmarterCSV.process('config/surgeon_lookup.csv', options) do |chunk|
	chunk.each do |data_hash|
		Surgeon.create!(data_hash)
	end
end