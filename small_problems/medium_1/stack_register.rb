require 'pry'

def integer?(instruction)
  instruction.to_i.to_s == instruction
end

def display_register(cpu)
  puts "#{cpu[:register]}"
end

def push_register_in_stack(cpu)
  cpu[:stack] << cpu[:register]
end

def pop_from_stack_add_register(cpu)
  cpu[:register] = cpu[:stack].pop + cpu[:register]
end

def pop_from_stack_sub_register(cpu)
  cpu[:register] =  cpu[:register] - cpu[:stack].pop
end

def pop_from_stack_mult_register(cpu)
  cpu[:register] = cpu[:stack].pop * cpu[:register] 
end

def pop_from_stack_div_register(cpu)
  cpu[:register] = cpu[:register] / cpu[:stack].pop 
end

def pop_from_stack_mod_register(cpu)
  cpu[:register] = cpu[:register] % cpu[:stack].pop 
end

def pop_from_stack_to_register(cpu)
  cpu[:register] = cpu[:stack].pop
end

def place_value_in_register(instruction, cpu)
  value = instruction.to_i
  cpu[:register] = value
end

def interpret(instruction, cpu)
  case 
  when integer?(instruction) then place_value_in_register(instruction, cpu)
  when instruction == "PUSH" then push_register_in_stack(cpu)
  when instruction == "ADD" then pop_from_stack_add_register(cpu)
  when instruction == "SUB" then pop_from_stack_sub_register(cpu)
  when instruction == "MULT" then pop_from_stack_mult_register(cpu)
  when instruction == "DIV" then pop_from_stack_div_register(cpu)
  when instruction == "MOD" then pop_from_stack_mod_register(cpu)
  when instruction == "POP" then pop_from_stack_to_register(cpu)
  when instruction == "PRINT" then display_register(cpu)
  end
end

def interpret_program(instructions, cpu)
  instructions = instructions.split(" ")
  instructions.each do |instruction|
    interpret(instruction, cpu)
  end
end

def minilang(instructions)
  cpu = { stack: [], register: 0 }

  interpret_program(instructions, cpu)
end

minilang('PRINT')
p '----'
minilang('5 PUSH 3 MULT PRINT')
p '----'
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
p '---'
minilang('5 PUSH POP PRINT')
p '---'
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
p '---'
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
p '---'
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
p '---'
minilang('-3 PUSH 5 SUB PRINT')
p '---'
minilang('6 PUSH')