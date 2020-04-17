require 'tesla_api'

def login
	puts "Attempting to login with token"
	tesla_api = TeslaApi::Client.new(access_token: '____________________') 

	puts "Logged in, getting vehicle no. 1"

	vehicle = tesla_api.vehicles.first
	vehicle_name = vehicle["display_name"]
	return vehicle, vehicle_name
end