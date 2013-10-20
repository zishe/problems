# find all prime dividers in sequence of 1..20
# unique it and multiply

# and check maximum consequence of the same numbers
# and multiply result on extra numbers
# (it's only 2 or 3 but easily extrapolates)

primes = [[1]]
(2..20).each do |x|
  y = 2
  m = x
  arr = []
  while y < m
    if m % y == 0
      arr << y
      m = m / y
      y -= 1
    end
    y += 1
  end
  arr << y
  primes << arr
end

max_counts = Hash.new
[2,3].each do |p|
  max = 1
  primes.each do |x|
    max = x.count(p) if x.count(p) > max
  end
  max_counts[p] = max
end

# primes.each { |p| p p }
res = primes.flat_map {|i| i }.uniq.inject(:*)
# puts res

# p max_counts
max_counts.each do |k, v|
  res = res * (k ** (v - 1))
  # p res
end
p res

# Using lib
require 'rational'
p (1..20).inject(1) { |result, n| result.lcm n }


i = 1
(1..21).each do |k|
  if i % k > 0
    (1..21).each do |j|
      if (i*j) % k == 0
        i *= j
        break
      end
    end
  end
end
p i

