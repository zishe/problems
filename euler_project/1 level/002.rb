require '../fib'

p Fibo.enum.take_while { |n| n < 4E6 }.select(&:even?).reduce(:+)
# => 4613732

x, y, sum = 1, 1, 0
while sum < 4E6
  sum += x + y
  x, y = x + 2*y, 2*x + 3*y
end

puts "Sum is #{ sum }."
