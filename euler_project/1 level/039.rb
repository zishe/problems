a = Hash.new(0)
(1...500).each { |x|
  (1...500).each { |y|
    a[(x*y).to_f/2] += 1 if x*y/2 < 1000
  }
}
p a.max_by {|_, j| j }[0].to_i
