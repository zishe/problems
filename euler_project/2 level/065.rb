$a = (0...100).map { |x| (x + 2) % 3 == 0 ? 2*(x+2)/3 : 1 }
get_r = -> (x) { x < 98 ? $a[x] + Rational(1, get_r.(x+1)) : 1 }
p (2 + Rational(1, get_r.(0))).numerator.to_s.chars.map(&:to_i).reduce(:+)
