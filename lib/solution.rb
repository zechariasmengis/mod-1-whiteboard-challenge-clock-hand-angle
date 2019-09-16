def clock_angle(time)
	# convert time string to integers
	hours = time.split(":")[0].to_i
	minutes = time.split(":")[1].to_i

	# the hour hand moves a little every minute
	# 360 degrees / 12 hours / 60 minutes = 0.5
	hours_hand_degrees_per_minute = 0.5
	hours_angle = (hours * (360 / 12)) + (minutes * hours_hand_degrees_per_minute)
	minutes_angle = minutes * (360 / 60)

	# make sure the return value is a positive number
	# then make sure that number is the smaller of the two possible angles
	difference = (hours_angle - minutes_angle).abs
	if difference > 180
		difference = 360 - difference
	end
	difference
end