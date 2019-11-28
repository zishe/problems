n = 1
p (2..Float::INFINITY).detect { |x|
  n += 1 unless (2..Math.sqrt(x) + 1).any? { |y| x % y == 0 }; n > 1E4
}

require 'mathn'
primes = Prime::EratosthenesGenerator.new
10_000.times { primes.next }
p primes.next
# => 104743
