require 'prime'

def find_prime_cons(a, b)
  (2..Float::INFINITY).take_while { |n|
    Prime.prime?(n**2 + a*n + b)
  }.size
end

l = 0
prod = 0
(-999..999).to_a.combination(2).each { |i, j|
  r = find_prime_cons(i, j)
  if r > l
    l = r
    prod = i*j
  end
}
p prod # => -59231
