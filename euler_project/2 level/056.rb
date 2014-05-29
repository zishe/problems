p (1...100).map { |x| (1...100).map { |y| (x**y).to_s.chars.map(&:to_i).reduce(:+) }.max }.max
