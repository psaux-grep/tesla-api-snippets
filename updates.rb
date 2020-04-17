require 'tesla_api'

require_relative 'wake'

vehicle, vehicle_name = wake

vehicle_state = vehicle.vehicle_state

puts vehicle_state["software_update"]
version = vehicle_state["software_update"]["version"]
status = vehicle_state["software_update"]["status"]

puts ""
if version != ""
	puts "#{vehicle_name}: " +
		 " Software update to version #{version} #{status}"
end