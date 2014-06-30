p (1..Float::INFINITY).detect { |x|
    (2..6).all? { |y| (x*y).to_s.chars.sort == x.to_s.chars.sort }
  }

p (2..6).map { |y| (142857*y).to_s.chars.sort.join }
