def clock_angle(time)
<<<<<<< HEAD
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
=======
	hours_int = time.split(":")[0].to_i
	minutes_int = time.split(":")[1].to_i
	hours_angle = (hours_int * 30 ) + (minutes_int * 0.5)
	minutes_angle = minutes_int * 6
	(hours_angle - minutes_angle).abs > 180 ? (360 - (hours_angle - minutes_angle)).abs : (hours_angle - minutes_angle).abs
end
>>>>>>> 4e73cbe87806b75bf7fa6e0de86a69e9530dfa29
