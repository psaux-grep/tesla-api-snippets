require 'tesla_api'

require_relative 'login'

def wake
	vehicle, vehicle_name = login	
	puts "Got vehicle (#{vehicle_name}), waking up"

	state = nil

	t = Time.now
	loop do 
		state = vehicle.wake_up
		puts state["state"]
		break if state["state"] == "online" || Time.now - t > 60
		sleep(5)
	end

	puts "#{vehicle_name} is now online and can receive commands"
	return vehicle, vehicle_name
end 


