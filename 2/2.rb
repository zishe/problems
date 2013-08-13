p1 = 1
p2 = 1
sum = 0
while p2 <= 4000000
  sum += p2 if p2 % 2 == 0
  p0 = p1
  p1 = p2
  p2 = p0 + p1
end
puts sum
