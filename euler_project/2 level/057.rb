def is? x
  x.numerator.to_s.length > x.denominator.to_s.length
end

def approx(m, i)
  i >= m ? Rational(1, 2) : Rational(1, (2 + approx(m, i + 1)))
end

p 1_000.times.select { |x| is?(1 + approx(x, 0)) }.size
