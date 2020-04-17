require 'tesla_api'

require_relative 'wake'

vehicle, vehicle_name = wake

puts "Turning Sentry Mode ON"
puts vehicle.set_sentry_mode(true)
