def triangle_type(a, b, c)
  l = [a, b, c].sort
  return 0 if l[0] + l[1] <= l[2]
  cs = l[0]**2 + l[1]**2 - l[2]**2
  puts cs/cs.abs unless cs == 0
  cs == 0 ? 2 : (cs > 0 ? 1 : 3)
end

p triangle_type(7,3,2) # Not triangle
p triangle_type(2,4,6) # Not triangle
p triangle_type(8,5,7) # Acute
p triangle_type(3,4,5) # Right
p triangle_type(7,12,8)# Obtuse
