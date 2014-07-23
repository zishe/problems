require '../fib'

p Fibo.enum.take_while { |n| n <= 4000 }.select(&:even?).inject(:+)
# => 4613732
