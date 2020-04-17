require 'tesla_api'

require_relative 'wake'

vehicle, vehicle_name = wake

vehicle_state = vehicle.vehicle_state
sm = vehicle_state["sentry_mode"] ? "ON" : "OFF"

puts "#{vehicle_name}: " +
	 "State of Sentry Mode: #{sm}"

