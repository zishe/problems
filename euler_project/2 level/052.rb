p (1..Float::INFINITY).detect { |x|
    x.to_s.start_with? '1' and (2..6).each.all? { |y| (x*y).to_s.chars.sort == x.to_s.chars.sort }
  }

# p (2..6).map { |y| (142857*y).to_s.chars.sort.join }
