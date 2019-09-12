def clock_angle(time)
	hours_int = time.split(":")[0].to_i
    minutes_int = time.split(":")[1].to_i
    hours_angle = (hours_int * 30 ) + (minutes_int * 0.5)
    minutes_angle = minutes_int * 6
     (hours_angle - minutes_angle).abs > 180 ? (360 - (hours_angle - minutes_angle)).abs : (hours_angle - minutes_angle).abs
end
