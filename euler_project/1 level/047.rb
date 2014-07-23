require 'mathn'

p (210..Float::INFINITY).detect { |x|
    (x..x+3).to_a.map.all? { |y|
      y.prime_division.map(&:first).size == 4
    }
  }

# => 134043
