def to_pan(n, m)
  (1..m).map { |i| (i*n).to_s }.inject(:+)
end
p (1000...10000).map { |i| to_pan(i, 2) }.select { |i|
  i.chars.sort.join == '123456789'
}.map(&:to_i).max

# => 932718654
