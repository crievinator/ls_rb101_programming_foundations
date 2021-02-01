require 'pry'
require 'yaml'

# load configuration file (YAML) to use in the program 

MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'nl'

def translated_messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num
end

# another method to check the validity of floats
# this is something different from the solutions provided by Launchschool 
# but I like this one more (clea(r)ner)

def number?(input)
  input.is_a?(Numeric)
end

# launch school solutions for the number?() method

=begin

def integer?(input)
  input.to_i.to_s == input
end

Opties voo Float ---------------------------

def float?(input)
  input.to_f.to_s == input
end

OF 

def float?(input)
  Float(input) rescue false
end

-------------------------------------------
def number?(input)
  integer?(input) || float?(input)
end

=end

def operation_to_message(op)
word = case op
  when '1'
    MESSAGES[LANGUAGE]['operation']['adding']
  when '2'
    MESSAGES[LANGUAGE]['operation']['substracting']
  when '3'
    MESSAGES[LANGUAGE]['operation']['Multiplying']
  when '4'
    MESSAGES[LANGUAGE]['operation']['Dividing']
  end
# if we want to add extra logic to the operation_to_message method
# we can do this by implicitly returning the value of word at the end of this method
word
end

prompt(translated_messages('welcome_message', LANGUAGE))

name = ''
loop do 
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(translated_messages('valid_name_message', LANGUAGE))
  else
    break
  end
end

prompt("Hi #{name}")

loop do # main loop
  number1 = ''
  loop do
    prompt(translated_messages('first_number', LANGUAGE))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1) 
      break
    else 
      prompt(translated_messages('incorrect_number', LANGUAGE))
    end
  end

  number2 = ''
  loop do 
    prompt(translated_messages('second_number', LANGUAGE))
    number2 = Kernel.gets().chomp()
    
    if valid_number?(number2)
      break
    else
      prompt(translated_messages('incorrect_number', LANGUAGE))
    end
  end 

  operator_prompt = <<-MSG
    What operation would you like to perform? 
    1) add 
    2) substract 
    3) multiply 
    4) divide
  MSG
  prompt(operator_prompt)
  
  operator = ''
  loop do
   operator = Kernel.gets().chomp()

   if %w(1 2 3 4).include?(operator)
    break
   else
    prompt(translated_messages('incorrect_operator', LANGUAGE))
   end
  end

  if LANGUAGE == 'nl'
    prompt(translated_messages('operation_message', LANGUAGE) + operation_to_message(operator))
  elsif LANGUAGE == 'en'
    prompt(operation_to_message(operator) + translated_messages('operation_message', LANGUAGE))
  end
  
  result = case operator 
          when '1'
            number1.to_i() + number2.to_i()
          when '2'
            number1.to_i() - number2.to_i()
          when '3'
            number1.to_i() * number2.to_i()
          when '4'
            number1.to_f() / number2.to_f
  end

  prompt(translated_messages('result_message', LANGUAGE) + result.to_s)

  prompt(translated_messages('another_calculation', LANGUAGE) )
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(translated_messages('goodbye_message', LANGUAGE) )