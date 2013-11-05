p (2...1000000).select { |i|
  i == i.to_s.split(//).map { |n| n.to_i**5 }.inject(:+)
}.inject(:+)
