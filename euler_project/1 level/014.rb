m = 0
(2...1E6).each do |i|
  n = 1
  x = i
  while x > 1
    if x % 2 == 0
      x = x / 2
    else
      x = 3 * x + 1
    end
    n += 1
  end
  m = [n, m].max
end

p m
# => 525
