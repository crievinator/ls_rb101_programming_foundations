require 'pry'

def ascii_value(string)
  string.split('').map do |char|
    char.ord
  end.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

puts ""


def split_in_hours_and_minutes(minutes)
  minutes = minutes.abs
  hours = minutes / 60
  minutes = minutes % 60

  while hours >= 24
    hours -= 24
  end
  hours_and_minutes = [hours, minutes]
end

def datetime_width(number)
  number.rjust(2, '0')
end

def time_of_day(total_minutes)
  hours, minutes = split_in_hours_and_minutes(total_minutes)

  if total_minutes.positive?
    hours = datetime_width(hours.to_s)
    minutes = datetime_width(minutes.to_s)

  elsif total_minutes.negative?
    if datetime_width(hours.to_s) == "00" && datetime_width(minutes.to_s) == "00"
      return "00:00"
    else 
      hours = 23 - hours
      hours = datetime_width(hours.to_s)
    end

    if datetime_width(minutes.to_s) == "00"
      minutes = "00"
    else
      minutes = 60 - minutes
      minutes = datetime_width(minutes.to_s)
    end

  else
    return "00:00"
  end
  "#{hours}:#{minutes}"
end

p time_of_day(-3) 

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(-1440) == "00:00"
p time_of_day(1440) == "00:00"


MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day2(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  binding.pry
  format('%02d:%02d', hours, minutes)
end

p time_of_day2(35) == "00:35"
p time_of_day2(-1437) == "00:03"
p time_of_day2(3000) == "02:00"
p time_of_day2(800) == "13:20"
p time_of_day2(-4231) == "01:29"
p time_of_day2(-1440) == "00:00"
p time_of_day2(1440) == "00:00"