n = 1
p (2..Float::INFINITY).detect { |x|
  n += 1 unless (2..Math.sqrt(x) + 1).any? { |y| x % y == 0 }; n >= 10_001
}

require 'mathn'
primes = Prime.new
10_000.times { primes.next }
puts primes.next

# => 104743
