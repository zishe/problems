def to_pan(n, m)
  (1..m).map { |i| (i*n).to_s }.inject(:+)
end
p (1000...10000).select { |i|
  to_pan(i, 2).split(//).sort.join == '123456789'
}.map { |i| to_pan(i, 2).to_i }.max
