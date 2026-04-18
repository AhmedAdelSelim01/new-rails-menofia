# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

users = [
	{
		name: "Amina Hassan",
		email: "amina.hassan@example.com",
		address: "Menofia, Egypt",
		dob: Date.new(2000, 5, 14),
		phone: 10_100_101
	},
	{
		name: "Omar Khaled",
		email: "omar.khaled@example.com",
		address: "Cairo, Egypt",
		dob: Date.new(1998, 11, 2),
		phone: 10_200_202
	},
	{
		name: "Sara Youssef",
		email: "sara.youssef@example.com",
		address: "Alexandria, Egypt",
		dob: Date.new(2001, 8, 25),
		phone: 10_300_303
	}
]

users.each do |user_attributes|
	User.find_or_create_by!(email: user_attributes[:email]) do |user|
		user.name = user_attributes[:name]
		user.address = user_attributes[:address]
		user.dob = user_attributes[:dob]
		user.phone = user_attributes[:phone]
	end
end

editors = [
	{
		name: "Nour Ali",
		email: "nour.ali@example.com"
	},
	{
		name: "Hend Mostafa",
		email: "hend.mostafa@example.com"
	},
	{
		name: "Mahmoud Fathy",
		email: "mahmoud.fathy@example.com"
	}
]

editors.each do |editor_attributes|
	Editor.find_or_create_by!(email: editor_attributes[:email]) do |editor|
		editor.name = editor_attributes[:name]
	end
end
