require 'date'

def friday_13th(year)
  check_date = Date.new(year,1,13)
  friday_13ths = []

  12.times do 
    if check_date.mday == 13 && check_date.wday == 5
      friday_13ths << check_date 
    end
    check_date = check_date.next_month
  end
  friday_13ths.count
end

p friday_13th(2015)
p friday_13th(1986)
p friday_13th(2019)