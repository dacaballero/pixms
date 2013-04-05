require 'factory_girl'

FactoryGirl.define do
	factory :user do |user|
		user.name 		"Test"
		user.email		"user@test.com"
		user.password	"password"
		user.password_confirmation 	"password"	
	end

	factory :client do |c|
		c.name		"test"
		c.phone_number		"5555-5555"
		c.email		"test@email.com"
		c.webpage	"www.test.com"
	end
end