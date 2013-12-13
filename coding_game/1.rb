n = 3
c = 100
b = [100, 1, 60]

if n < 0 || n > 2000 || c < 0 || c > 1000000000 || b.any? { |x| x < 0 } || b.any? { |x| x > 1000000000 } || b.inject(:+) < c
  puts 'IMPOSSIBLE'
else
  b = b.sort
  a = c/n
  r = []

  (0...n).each { |x|
    if b[x] < a
      r << b[x]
    else
      r << a
    end
    a = n > x + 1 ? (c - r.inject(:+))/(n - x - 1) : c - r.inject(:+)
  }

  while r.inject(:+) < c and r.uniq.size == 1
    r = (r[1..-1] << (r[0] + 1)).sort
  end
  r.each { |x| puts x }
end
