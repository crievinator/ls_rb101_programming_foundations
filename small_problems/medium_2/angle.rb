=begin
=end

def valid_triangle?(angles)
  angles.sum == 180 && angles.none? { |angle| angle.zero? }
end

def triangle_type(angles)
  case 
  when angles.count(90) == 1 then return :right
  when angles.select { |angle| angle < 90}.count == 3 then return :acute
  else return :obtuse
  end
end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  if valid_triangle?(angles)
    triangle_type(angles)
  else
    return :invalid
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid