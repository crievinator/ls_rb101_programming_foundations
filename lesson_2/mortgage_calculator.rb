require 'pry'

# this program is a simple mortgage calculator which calculates
# the monthly payment based on APR, loan amout and duration

# first we will start with asking for the loan amount

def prompt(prompt)
  Kernel.puts("-> #{prompt}")
end

def correct_number?(num)
  Integer(num) rescue false
end

def correct_duration?(duration)
  duration.to_i.to_s == duration
end

def loan_duration_in_months(duration)
  (duration.to_i * 12)
end

def monthly_interest_rate(apr)
  (apr.to_f / 100) / 12
end

def monthly_payment(loan_amount, monthly_interest_rate, loan_duration_in_months)
  loan_amount.to_f *  (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**-loan_duration_in_months))
end

loan_amount = ''
loop do
  prompt('What amount do you want to borrow? (min 100.000)')

  loan_amount = Kernel.gets.chomp

  # check if the amount borrowed is a integer or float & is bigger than 100.000
  break if correct_number?(loan_amount) && loan_amount.to_i >= 100_000

  puts '!!! The number you entered doesn\'t seem to be correct (either the
          syntax is not correct or the amount). Please enter a correct number.!!!'
end

percentage = ''
loop do
  prompt('What\'s the annual percentage rate (APR)? E.g. => 3%')

  percentage = Kernel.gets.chomp

  # check if the annual percentage is an integer or float
  break if correct_number?(percentage)

  puts '!!! Enter a correct percentage !!!'
end

loan_duration = ''
loop do
  prompt('How many years do you want to pay off your debt? (in years)')

  loan_duration = Kernel.gets.chomp

  # check if loan duration is a fixed integer (no float possible)
  break if correct_duration?(loan_duration)

  puts '!!! Incorrect amount of years !!!'
end

monthly_payment = monthly_payment(loan_amount,
                                  monthly_interest_rate(percentage),
                                  loan_duration_in_months(loan_duration))

prompt("Your monthly payment is #{format('%.2f', monthly_payment)}")
