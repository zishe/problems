fraction = (1..1E6).map(&:to_s).join
p (0..6).map { |i, _| fraction[10**i-1].to_i }.inject(:*)
# => 210
