require 'pry'

def clock_angle(time)

    # Split the time at the :
    hour_minute = time.split(':')
    # Convert string to an integer
    hour = hour_minute[0].to_f
    minute = hour_minute[1].to_f
    
    # Calculate the hour angle and the minute angle
    minute_angle = minute * 6
    hour_angle = hour * 30 + (minute * 0.5)
    if minute_angle == 360
        minute_angle = 0
    end
    if hour_angle == 360
        hour_angle = 0
    end
    # Do fancy math
    return_angle = 0.0
    if minute_angle <= hour_angle
        return_angle = hour_angle - minute_angle
        binding.pry
    else
        return_angle = (360.0 - minute_angle) + hour_angle
        binding.pry
    end
    # binding.pry
    return_angle
end
