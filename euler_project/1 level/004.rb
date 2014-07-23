p (100..999).to_a.combination(2).map { |x, y| x * y }.select { |p| s = p.to_s; s == s.reverse }.max
# => 906609
