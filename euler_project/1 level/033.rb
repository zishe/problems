p (10..99).each_with_object([]) { |x, s|
    (10..99).each { |y|
      s << Rational(x, y) if Rational(y, x) == Rational(y%10, x/10) and Rational(x, y) < 1 and x%10 == y/10
    }
  }.inject(:*).denominator
