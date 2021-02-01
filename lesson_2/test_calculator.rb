# Calculator application with 2 numbers as input

Kernel.puts("Hi there! What's your first number?")
first_number = Kernel.gets().chomp()

Kernel.puts("Give me your second number!")
second_number = Kernel.gets().chomp()

Kernel.puts("What operation do you want to perform?")
operation = Kernel.gets().chomp()

expression = first_number << operation << second_number
result = eval(expression)
Kernel.puts("Your result is: #{result}")