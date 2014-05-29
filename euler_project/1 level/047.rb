require 'mathn'

p (210..Float::INFINITY).lazy.take_while { |x|
    not (x..(x+3)).to_a.map.all? { |y|
      y.prime_division.map{ |z| z[0] }.size == 4
    }
  }.to_a.last + 1
