DEGREE = "\xC2\xB0"

def dms(number)
  _ , result_number = number.divmod(360)

  degrees = result_number.floor
  degrees_decimal = result_number.modulo(1).round(10)

  minutes_total = degrees_decimal * 60
  minutes = minutes_total.floor
  minutes_decimal = minutes_total.modulo(1).round(10)

  seconds = (minutes_decimal * 60).floor

  "#{degrees}#{DEGREE}#{format("%02d", minutes)}'#{format("%02d", seconds)}\""

end

p dms(30)
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")