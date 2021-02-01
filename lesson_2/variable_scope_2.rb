def fix(value)
  value.concat('!')
  value = value.upcase
end

s = 'hello'
t = fix(s)

p s
p t 