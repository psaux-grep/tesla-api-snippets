
require 'tesla_api'

require_relative 'wake'

vehicle, vehicle_name = wake

vehicle_state = vehicle.vehicle_state

puts vehicle_state["software_update"]
version = vehicle_state["software_update"]["version"]

puts ""
if version != ""
	puts "#{vehicle_name}: " +
		 " Software update to version #{version} pending!"
end

puts "Attempting to schedule update"
puts vehicle.schedule_software_update(600)
