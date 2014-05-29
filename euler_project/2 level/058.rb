require 'mathn'

primes = 0
pr = 1
res = 1
(1..Float::INFINITY).detect { |x|
  res = x * 2 + 1
  y = res**2 # 9
  z = (y + pr)/2 # 5
  primes += [z, (y+z)/2, (pr+z)/2].select{ |n| Prime.prime? n }.size
  pr = y
  h = primes / (x*4 + 1)
  # p h
  h < Rational(1, 10)
 }
p res
