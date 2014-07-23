p (1...500).to_a.combination(2).each_with_object(Hash.new(0)) { |(x, y), a|
  a[(x*y)/2.0] += 1 if x*y/2 < 1000
}.max_by {|_, j| j }.first.to_i
