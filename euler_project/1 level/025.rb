require '../fib'

i = 0
Fibo.enum.take_while { |f| i += 1; f.to_s.size < 1000 }
p i
