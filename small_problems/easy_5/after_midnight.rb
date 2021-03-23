def after_midnight(time_string)
  hours = (time_string[0,2].to_i) % 24
  minutes = time_string[3, 2].to_i

  total_minutes = (60 * hours) + minutes
end

def before_midnight(time_string)
  after_midnight_minutes = after_midnight(time_string)

  
  1440.divmod(after_midnight_minutes)
end

p after_midnight('12:34')
p after_midnight('00:00')
p after_midnight('24:00')


p before_midnight('12:34')
p before_midnight('00:00')
p before_midnight('24:00')
