=begin

Problem:

- input = n (integer which represents the amount switches)
- output = array with all the indexes which are 'on' after n iterations with specific toggles per iteration

Data structure & Algorithm:

- To keep track of all lights which are on -> hash e.g. {1=> true, 2 => off}
- Also might need a method which toggles certain lights (depending on inputs)

Pseudo code:

- initialize the hash with n elements with default value false
- loop n times through the hash and toggle specific lights
- return an array with all lights which are 'on'

extra:

- write method to toggle 1 light
- write method to toggle all lights based on input (n) where multipliers of n should be toggled

=end

def initialize_lights(n)
  hash = (1..n).to_a.to_h { |el| [el, false]}
end

def toggle(value)
  toggle = {true => false, false => true}
  toggle[value]
end

def toggle_hash(hash, n)
  hash.each do |key, value|
    if key % n == 0
    hash[key] = toggle(value)
    else 
    end
  end
end

def toggle_lights(n)
  lights = initialize_lights(n)
  result = []

  n.times do |i|
    toggle_hash(lights, i + 1)
  end  

  lights.each do |k, v|
   result << k if v
  end
  result
end

p toggle_lights(5)
