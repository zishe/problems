class Integer
  def factors
    (1..Math.sqrt(self)).select { |i| self % i == 0 }.inject([]) { |f, i|
      f << i
      f << self/i unless i == self/i
      f
    }.sort
  end
end

s = 0
(1..Float::INFINITY).detect { |x| s += x; s.factors.length > 500 }
p s
# => 76576500
