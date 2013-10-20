x = 2
num = 1
while num < 10001
  x += 1
  prime = true
  for y in (2..Math.sqrt(x) + 1)
    if x % y == 0
      prime = false
      break
    end
  end
  num += 1 if prime
end
puts x

# require 'mathn'
# primes = Prime.new
# 10_000.times { primes.next }
# puts "Prime is #{ primes.next }."
