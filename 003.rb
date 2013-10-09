num = 600851475143
max = num / 2
x = 2
res = 1

iterations = 0
while x <= max
  if num % x == 0
    res = x
    num = num / res
    puts res
    x -= 1
  end
  max = num / res
  x += 1
  iterations += 1
end
puts "result: #{num}"
puts "iterations: #{iterations}"
