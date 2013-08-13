x = 1
num = 0
while num < 10001
  x += 1
  dev = 0
  for y in (1..x - 1)
    dev += 1 if x % y == 0
    break if dev > 1
  end
  num += 1 if dev < 2
end
puts x
